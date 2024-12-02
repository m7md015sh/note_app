import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/text_style.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 8.w,bottom: 24.h,top: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
         color: Colors.yellow,
       ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:  Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Text('Flutter Treks',style: AppTextStyles.headline1)),
            subtitle:  Text('build your career with Mohamed Shokry',style: AppTextStyles.bodyText1),
            trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,size: 32,)),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 16.w,top: 16.h),
            child: Text('May 21, 2024',style: AppTextStyles.caption),
          ),
        ],
      ),
    );
  }
}
