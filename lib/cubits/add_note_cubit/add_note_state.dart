part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteloading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaliure extends AddNoteState {
  final String errMessage;

  AddNoteFaliure(this.errMessage);
}
