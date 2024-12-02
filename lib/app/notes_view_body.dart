
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/note_item.dart';

import '../views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
      child: const Column(
        children: [
          NotesAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
