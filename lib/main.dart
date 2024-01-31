import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter/features/presentation/main_home.dart';
import 'package:new_flutter/features/presentation/search.dart';
import 'package:new_flutter/features/presentation/signup_screen.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ProviderScope(
              child: const HomeTemplateScreen(),
            ),
        '/signUp': (context) => SignUpScreen(),
        '/mainHome': (context) => MainHome(),
        '/search': (context) => SearchPage(),
      },
    ),
  );
}
