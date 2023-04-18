import 'package:flutter/material.dart';
import 'package:inkam_app/features/home/widgets/categories.dart';
import 'package:inkam_app/features/leaderboard/screens/leaderboaed_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LeaderBoardScreen.id:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => LeaderBoardScreen(),
      );
    case CategoriesTab.id:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoriesTab(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist..'),
          ),
        ),
      );
  }
  ;
}
