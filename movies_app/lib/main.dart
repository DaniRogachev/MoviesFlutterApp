import 'package:flutter/material.dart';
import 'package:movies_app/app_router.dart';
import 'package:movies_app/injection.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 5, 42, 73),
          ),
          useMaterial3: true),
    );
  }
}
