import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteStateInitial());

  addNote(NoteModel note)async{
    emit(AddNoteStateLoading());
   try {
     var noteBox= Hive.box(kNoteBox);
     await noteBox.add(note);
     emit(AddNoteStateSuccess());
   } on Exception catch (e) {
     emit(AddNoteStateFailure(e.toString()));
   }
  }

}