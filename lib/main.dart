import 'package:flutter/material.dart';
import 'package:multivendor_test/core/di.dart';
import 'package:multivendor_test/core/theme/app_theme_data.dart';
import 'package:multivendor_test/features/landing/presentation/screens/landing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MultiVendor Test',
      themeMode: ThemeMode.dark,
      theme: AppThemData.lightThemeData,
      darkTheme: AppThemData.darkThemeData,
      home: const LandingScreen(),
    );
  }
}
