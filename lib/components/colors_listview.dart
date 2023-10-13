import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.selected,
    required this.color,
  });
  final bool selected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: selected ? Colors.white : color,
        child: CircleAvatar(
          backgroundColor: color,
          radius: 32,
        ),
      ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = const [
    Color(0xFFF6EEE0),
    Color(0xFFE4B7A0),
    Color(0xFFA45C40),
    Color(0xFFC38370),
    Color(0xFF537D8D),
    Color(0xFFB97D60),
    Color(0xFFF0A160),
    Color(0xFFF54D3D),
  ];
  int currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentItem = index;
            BlocProvider.of<AddNoteCubit>(context).color = colors[currentItem];
            setState(() {});
          },
          child: ColorItem(
            selected: currentItem == index,
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
