import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/views/widgets/add_note_form.dart';


class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left: 16.w,right: 16.w,bottom: 360.h,top: 32.h),
      child:  BlocConsumer<AddNoteCubit,AddNoteState>(
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteStateLoading ? true : false,
                child: const AddNoteForm());
          },
          listener: (BuildContext context, AddNoteState state) {
            if(state is AddNoteStateFailure){
              debugPrint('failure ${state.errorMessage}');
            }
            if(state is AddNoteStateSuccess){
              Navigator.pop(context);
            }
          },
          ),
    );
  }
}
