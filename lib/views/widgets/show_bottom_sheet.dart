import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/input_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16.w,vertical: 32.h),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            const InputTextField(hint: 'Title',maxLines: 1,),
            const InputTextField(hint: 'Content',maxLines: 4,),
            SizedBox(
              height: 16.h,
            ),
             const CustomButton(),
          ],
        ),
      ),
    );
  }
}
