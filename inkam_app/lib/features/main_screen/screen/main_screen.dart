import 'package:flutter/material.dart';

import '../../../constants/global_variables.dart';
import '../../home/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _screen = 'home';
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
      home: Scaffold(
        body: _screen == 'home'
            ? const HomeScreen()
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
      ),
    );
  }
}
