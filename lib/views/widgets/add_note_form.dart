import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/input_text_field.dart';

class AddNoteForm extends StatefulWidget {
     const AddNoteForm({super.key});
    @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title,subTitle;
  final GlobalKey<FormState> formKey=GlobalKey();
  final FocusNode _focusNode=FocusNode();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(

          children: [
             InputTextField(hint: 'Title',maxLines: 1,onSaved: (value){
             title=value;
             },focusNode: _focusNode,),
             InputTextField(hint: 'Content',maxLines: 4,onSaved: (value){
              subTitle=value;
            },),
            SizedBox(
              height: 16.h,
            ),
             Padding(
               padding: EdgeInsets.only(top: 16.h),
               child: CustomButton(onTap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                  }else{
                    autoValidateMode=AutovalidateMode.always;
                    setState(() {

                    });
                  }
               },),
             ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      _focusNode.requestFocus();
    });
  }
  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }
}
