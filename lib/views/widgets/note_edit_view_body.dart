import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/input_text_field.dart';

class NoteEditViewBody extends StatelessWidget {
  const NoteEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
      child:  Column(
        children: [
          const NotesAppBar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 24.h,),
          const InputTextField(hint: 'Title', maxLines: 1),
          const InputTextField(hint: 'Content', maxLines: 5),

        ],
      ),
    );
  }
}
