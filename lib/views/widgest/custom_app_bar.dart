import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w400
        ),),
        const Spacer(),
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: const Icon(Icons.search),
        )
      ],
    );
  }
}
