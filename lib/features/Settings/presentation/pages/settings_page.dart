import 'package:chat_app/core/extensions/context_extension.dart';
import 'package:chat_app/core/themes/dark_mode.dart';
import 'package:chat_app/core/themes/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            CupertinoSwitch(
                value: context.watch<ThemeProvider>().theme == darkMode,
                onChanged: (_) {
                  context.themeProvider.toggleTheme();
                }),
          ],
        ),
      ),
    );
  }
}
