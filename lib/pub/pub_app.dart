import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'search.dart';

void runPubApp() {
  runApp(const ProviderScope(child: PubApp()));
}

class PubApp extends ConsumerWidget {
  const PubApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(home: SearchPage());
  }
}
