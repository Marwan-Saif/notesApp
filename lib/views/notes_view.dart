import 'package:flutter/material.dart';
import 'package:notes_app/components/appbar.dart';
import 'package:notes_app/components/custom_note_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [CustomAppBar(), CustomNoteItem()],
        ),
      ),
    );
  }
}
