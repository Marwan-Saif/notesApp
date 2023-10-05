import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/models/note_model.dart';
part 'notes_state.dart';

class AddNoteCubit extends Cubit<NotesState> {
  AddNoteCubit() : super(NotesInitial());
}
