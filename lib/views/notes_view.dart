import 'package:flutter/material.dart';
import 'package:notes_app/components/add_note_bottom_sheet.dart';
import 'package:notes_app/components/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
      ),
      body: const NotesViewBody(),
    );
  }
}
