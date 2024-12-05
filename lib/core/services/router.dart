import 'package:chat_app/core/services/injector_container.dart';
import 'package:chat_app/features/Settings/presentation/cubit/theme_cubit.dart';
import 'package:chat_app/features/Settings/presentation/pages/settings_page.dart';
import 'package:chat_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:chat_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:chat_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:chat_app/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/pages/chat_page.dart';
import 'package:chat_app/features/chat/presentation/pages/chat_room_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SignInPage.routeName:
      return _pageBuilder(
        (_) => BlocProvider(
          create: (_) => sl<AuthCubit>(),
          child: SignInPage(),
        ),
        settings: settings,
      );
    case SignUpPage.routeName:
      return _pageBuilder(
        (_) => BlocProvider(
          create: (_) => sl<AuthCubit>(),
          child: SignUpPage(),
        ),
        settings: settings,
      );
    case ChatPage.routeName:
      return _pageBuilder(
        (_) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => sl<AuthCubit>(),
            ),
            BlocProvider(
              create: (_) => sl<ChatCubit>(),
            ),
          ],
          child: const ChatPage(),
        ),
        settings: settings,
      );
    case ChatRoomPage.routeName:
      return _pageBuilder(
        (_) => BlocProvider(
          create: (_) => sl<ChatCubit>(),
          child: const ChatRoomPage(),
        ),
        settings: settings,
      );
    case SettingsPage.routeName:
      return _pageBuilder(
        (_) => BlocProvider.value(
          // Menggunakan BlocProvider.value untuk ThemeCubit
          value: sl<ThemeCubit>(), // Gunakan instance yang ada
          child: const SettingsPage(),
        ),
        settings: settings,
      );
    default:
      return _pageBuilder(
        (_) => const Scaffold(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, _, __) => page(context),
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}
