import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';

import 'package:notes_app/models/note_model.dart';
part 'notes_state.dart';

class AddNoteCubit extends Cubit<NotesState> {
  AddNoteCubit() : super(NotesInitial());

  featchAllNotes() async {
    try {
      emit(Notesloading());
      var notesBox = Hive.box(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList() as List<NoteModel>;
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(NotesFaliure(e.toString()));
    }
  }
}
