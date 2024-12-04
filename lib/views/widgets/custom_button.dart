import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.onTap});
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        width: MediaQuery.of(context).size.width,
         height: 60.h,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.teal),
        child: const Center(child:  Text('Add',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600))),
      ),
    );
  }
}
