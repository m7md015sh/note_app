import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/input_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16.w,vertical: 32.h),
      child: const Column(
        children: [
          InputTextField(hint: 'Title',maxLines: 1,),
          InputTextField(hint: 'Content',maxLines: 4,),

        ],
      ),
    );
  }
}
