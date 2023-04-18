import 'package:flutter/material.dart';
import 'package:inkam_app/constants/global_variables.dart';
import 'package:inkam_app/features/home/screens/home_screen.dart';
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
  String _screen = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen == 'home'
          ? HomeScreen()
          : _screen == 'search'
              ? const Center(child: Text('Search'))
              : const Center(
                  child: Text('Edit Profile, report, change pin, logout')),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(4.0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _screen = 'search';
            });
          },
          tooltip: 'Search',
          child: const Icon(Icons.search),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: GlobalVariables.blue,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _screen = 'home';
                });
              },
              icon: Icon(
                Icons.home_outlined,
                color: _screen == 'home'
                    ? Colors.white
                    : GlobalVariables.unseletedBottomNB,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _screen = 'profile';
                });
              },
              icon: Icon(
                Icons.menu,
                color: _screen == 'profile'
                    ? Colors.white
                    : GlobalVariables.unseletedBottomNB,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
