import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/bloc_observer.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NotesView(),
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      ),
    );
  }
}
