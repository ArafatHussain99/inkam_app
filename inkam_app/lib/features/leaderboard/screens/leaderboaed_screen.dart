import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatefulWidget {
  static const String id = '/leaderBoard';
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: Center(
        child: Text('LeaderBoard'),
      ),
    );
  }
}
