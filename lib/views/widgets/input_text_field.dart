import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({super.key, required this.hint, required this.maxLines});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: TextField(
        maxLines: maxLines,
        cursorColor: Colors.teal,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(Colors.teal),
            hintText: hint,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
            hintStyle: const TextStyle(color: Colors.grey)),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: BorderSide(color: color ?? Colors.white));
