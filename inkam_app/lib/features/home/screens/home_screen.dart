import 'package:flutter/material.dart';
import 'package:inkam_app/constants/global_variables.dart';
import 'package:inkam_app/features/home/widgets/carousel_slider.dart';
import 'package:inkam_app/features/home/widgets/categories.dart';
import 'package:inkam_app/features/home/widgets/overview.dart';
import 'package:inkam_app/features/leaderboard/screens/leaderboaed_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://plus.unsplash.com/premium_photo-1669951867704-a78fd21fbbd2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                          ),
                          radius: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Khalid Hossain',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Admin',
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, LeaderBoardScreen.id);
                          },
                          child: Icon(
                            Icons.military_tech,
                            color: Colors.orange.shade300,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.notifications_outlined,
                            color: GlobalVariables.blue,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.arrow_downward,
                            color: GlobalVariables.orange,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                OverviewTab(),
                const SizedBox(
                  height: 15,
                ),
                CarouselSliderTab(),
                const SizedBox(
                  height: 15,
                ),
                CategoriesTab()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
