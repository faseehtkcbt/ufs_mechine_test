import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/config/theme/app_theme.dart';

import 'features/homescreen/presentation/pages/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const DataAccesment(),
    );
  }
}

