import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text('Notes',style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w400
          ),),
          const Spacer(),
          const CustomSearchIcon(),
        ],
      ),
    );
  }
}
