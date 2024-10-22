import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/core/routes/routes.dart';
import 'package:online_class/services/bloc_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(); // Initialiser Firebase
    print('Firebase initialisé avec succès');
  } catch (e) {
    print('Erreur lors de l\'initialisation de Firebase: $e');
  }
  runApp(const OnlineClass());
}

class OnlineClass extends StatelessWidget {
  const OnlineClass({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MultiBlocProvider(
        providers: blocProviders(context: context),
        child: SafeArea(
          top: false,
          child: MaterialApp.router(
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                color: Colors.white,
              ),
            ),
            debugShowCheckedModeBanner: false,
            routerConfig: router,
          ),
        ),
      ),
    );
  }
}
