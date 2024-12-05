import 'package:chat_app/core/services/injector_container.dart';
import 'package:chat_app/core/services/router.dart';
import 'package:chat_app/core/themes/dark_mode.dart';
import 'package:chat_app/features/Settings/presentation/cubit/theme_cubit.dart';
import 'package:chat_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init();

  runApp(BlocProvider(
    create: (context) => sl<ThemeCubit>(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Education App',
          theme: darkMode,
          onGenerateRoute: generateRoute,
          initialRoute: SignInPage.routeName,
        );
      },
    );
  }
}
