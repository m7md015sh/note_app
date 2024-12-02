import 'package:flutter/material.dart';
import 'package:note_app/app/notes_view_body.dart';

import 'widgets/show_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return const ShowBottomSheet();
        });
      },child: const Icon(Icons.add),),
      body: const SafeArea(
        child:NotesViewBody(),

      ),
    );
  }
}