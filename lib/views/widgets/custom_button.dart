import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
      width: MediaQuery.of(context).size.width,
       height: 60.h,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.teal),
      child: Center(child:  Text('Add',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600))),
    );
  }
}
