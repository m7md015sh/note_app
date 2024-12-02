import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgest/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
          child: const Column(
            children: [
              NotesAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
