import 'package:flutter/material.dart';
import 'package:notes_app/components/add_note_bottom_sheet.dart';
import 'package:notes_app/components/appbar.dart';
import 'package:notes_app/components/custom_note_card.dart';
import 'package:notes_app/components/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
