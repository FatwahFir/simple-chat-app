import 'package:chat_app/core/extensions/context_extension.dart';
import 'package:chat_app/features/Settings/presentation/cubit/theme_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('S E T T I N G S'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: context.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Dark Mode'),
            BlocBuilder<ThemeCubit, ThemeData>(
              builder: (context, state) {
                final isDarkMode = state.brightness == Brightness.dark;
                return CupertinoSwitch(
                    value: isDarkMode,
                    onChanged: (val) =>
                        context.read<ThemeCubit>().toggleTheme());
              },
            ),
          ],
        ),
      ),
    );
  }
}
