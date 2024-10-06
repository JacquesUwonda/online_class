import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/features/welcome/logic/cubit/welcome_dots_cubit.dart';
import 'package:online_class/features/welcome/pages/welcome.dart';

void main() {
  runApp(const OnlineClass());
}

class OnlineClass extends StatelessWidget {
  const OnlineClass({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => WelcomeDotsCubit(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            top: false,
            child: WelcomePage(),
          ),
        ),
      ),
    );
  }
}
