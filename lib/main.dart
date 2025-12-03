import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvm_go_router_builder/presentation/router/router.dart';

void main() {
  runApp(
    ProviderScope(
      // Never retry any provider
      // どのプロバイダーに対しても再試行は絶対に行わない。
      retry: (retryCount, error) => null,
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider),
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
    );
  }
}