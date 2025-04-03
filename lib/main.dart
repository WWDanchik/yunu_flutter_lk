import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/views/router/router.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(
    ToastificationWrapper(
      config: ToastificationConfig(
        alignment: Alignment.bottomCenter,
        animationBuilder: (context, animation, alignment, child) {
          final curved = CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          );

          return FadeTransition(
            opacity: curved,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(curved),
              child: child,
            ),
          );
        },
        itemWidth: 440,
        animationDuration: const Duration(milliseconds: 300),
      ),
      child: ProviderScope(child: const MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final colorScheme = ColorScheme.fromSeed(seedColor: Color(0xFF586BFB));
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
        ),
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      routerConfig: goRouter,
      locale: const Locale('ru', 'RU'),
    );
  }
}
