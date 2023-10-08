import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsetsDirectional.all(24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Text(
                note.subTitle,
                style: const TextStyle(
                  color: Color.fromARGB(255, 69, 69, 69),
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 26,
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              note.date,
              style: TextStyle(color: Colors.grey[700]),
            )
          ],
        ),
      ),
    );
  }
}
