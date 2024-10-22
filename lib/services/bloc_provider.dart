import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_class/features/authentification/logic/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:online_class/features/authentification/logic/cubit/showpassword/showpassword_cubit.dart';
import 'package:online_class/features/welcome/logic/cubit/welcome_dots_cubit.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> blocProviders({required BuildContext context}) {
  return [
    //Blocs,
    BlocProvider(create: (_) => SignInBloc()),

    //Cubits
    BlocProvider(
      create: (_) => WelcomeDotsCubit(),
    ),

    //show password cubit,
    BlocProvider(
      create: (_) => ShowpasswordCubit(),
    )
  ];
}
