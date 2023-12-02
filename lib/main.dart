import 'package:flutter/material.dart';
import 'package:voice_club/home/view/home_screen.dart';
import 'package:voice_club/utils/theme/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primaryColor: Pallet.primaryColor,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
          primaryColor: Pallet.primaryColor, brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}
