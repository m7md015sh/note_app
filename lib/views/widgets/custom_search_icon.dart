import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key,required this.icon});
   final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Icon(icon),
    );
  }
}
