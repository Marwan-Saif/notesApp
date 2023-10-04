import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_note_card.dart';

class NotesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: CustomNoteItem(),
        );
      },
      itemCount: 5,
    );
  }
}
