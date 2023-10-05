part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class Notesloading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFaliure extends NotesState {
  final String errMessage;

  NotesFaliure(this.errMessage);
}
