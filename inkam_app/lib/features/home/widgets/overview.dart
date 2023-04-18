import 'package:flutter/material.dart';
import 'package:inkam_app/constants/global_variables.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: GlobalVariables.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Inkam',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'This week',
                      style: TextStyle(
                          color: GlobalVariables.unseletedBottomNB,
                          fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  '1050 tk',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'See all Inkam',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 0.5,
                    offset: Offset(0, 3),
                    color: Colors.grey)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Next Disbursement',
                  style: TextStyle(
                      color: GlobalVariables.unseletedBottomNB,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '07 AUG',
                  style: TextStyle(
                      fontSize: 15,
                      color: GlobalVariables.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'SUNDAY',
                  style: TextStyle(
                      fontSize: 15,
                      color: GlobalVariables.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'See all statement',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
