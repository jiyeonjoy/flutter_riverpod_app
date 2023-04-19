import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common.dart';
import 'home.dart';

void runStackoverflowApp() {
  runApp(const ProviderScope(child: StackoverflowApp()));
}

class StackoverflowApp extends StatelessWidget {
  const StackoverflowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF2d2d2d),
      ),
      builder: (context, child) {
        final theme = Theme.of(context);

        return ProviderScope(
          overrides: [
            /// We override "themeProvider" with a valid theme instance.
            /// This allows providers such as "tagThemeProvider" to read the
            /// current theme, without having a BuildContext.
            themeProvider.overrideWithValue(theme),
          ],
          child: ListTileTheme(
            textColor: const Color(0xFFe7e8eb),
            child: child!,
          ),
        );
      },
      home: const MyHomePage(),
    );
  }
}
