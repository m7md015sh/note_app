import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_edit_view_body.dart';

import 'widgets/custom_app_bar.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: SafeArea(
       child: NoteEditViewBody()
     ),
    );
  }
}
