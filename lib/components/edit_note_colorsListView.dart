import 'package:flutter/widgets.dart';
import 'package:notes_app/components/colors_listview.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  late int currentItem;
  @override
  void initState() {
    currentItem = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentItem = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: ColorItem(
            selected: currentItem == index,
            color: kColors[index],
          ),
        ),
      ),
    );
  }
}
