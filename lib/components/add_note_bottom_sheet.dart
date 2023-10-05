import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/components/add_note_form.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child:
          BlocConsumer<AddNoteCubit, AddNoteState>(listener: (context, state) {
        if (state is AddNoteFaliure) {
          print("failed  ${state.errMessage}");
        }
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteloading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 16.0,
                right: 16,
                top: 24,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const SingleChildScrollView(
              child: AddNoteForm(),
            ),
          ),
        );
      }),
    );
  }
}
