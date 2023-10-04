import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
