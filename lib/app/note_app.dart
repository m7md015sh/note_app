import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/notes_view.dart';

class NotesAPP extends StatelessWidget {
   const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit( 
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
       return MultiBlocProvider(
         providers: [
           BlocProvider(create: (context)=>AddNoteCubit()),
         ],
         child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(brightness: Brightness.dark,
            floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.teal.shade800),
            fontFamily: 'Poppins'
            ),
            home:  const NotesView(),
          ),
       );
      }
    );
  }
}
