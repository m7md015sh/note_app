import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/add_note_form.dart';


class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left: 16.w,right: 16.w,bottom: 360.h,top: 32.h),
      child:  const AddNoteForm(),
    );
  }
}
