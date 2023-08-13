import 'package:flutter/material.dart';
import 'package:inkam_app/constants/global_variables.dart';
import 'package:inkam_app/features/auth/screens/auth.dart';
import 'package:inkam_app/features/home/screens/home_screen.dart';
import 'package:inkam_app/features/main_screen/screen/main_screen.dart';
import 'package:inkam_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.blue,
          secondary: GlobalVariables.blue,
          onSecondary: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xffF1F7FC),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AuthPage());
  }
}
