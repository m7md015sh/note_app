import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/app/note_app.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/models/note_model.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp( const NotesAPP());
}
