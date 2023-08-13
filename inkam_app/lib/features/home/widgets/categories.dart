import 'package:flutter/material.dart';
import 'package:inkam_app/constants/global_variables.dart';

class CategoriesTab extends StatefulWidget {
  static const String id = '/categories';
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  List categories = [
    'Academic Courses',
    'Skill & Professional',
    'Financial Products',
    'Kids Courses',
    'Health Packages',
    'Uddokta Academy',
    'Events',
    'Micro Jobs',
    'Jobs'
  ];
  List colorss = [
    const Color(0xffD9F1EB),
    const Color(0xffD9E7F3),
    const Color(0xffFFE1BF),
    const Color(0xffF4DDDD),
    const Color(0xffFDF2C8),
    const Color(0xffEADFFF),
    const Color(0xffD9F1EB),
    const Color(0xffD9E7F3),
    const Color(0xffFFE1BF),
  ];
  // Map<String, dynamic> categories = {
  //   'Academic Courses': {'colors': Color(0xffD9F1EB)},
  //   'Skill & Professional Courses': {'colors': Color(0xffD9E7F3)},
  //   'Financial Products': {'colors': Color(0xffFFE1BF)},
  //   'Kids Courses': {'colors': Color(0xffF4DDDD)},
  //   'Health Packages': {'colors': Color(0xffFDF2C8)},
  //   'Uddokta Academy': {'colors': Color(0xffEADFFF)},
  //   'Events': {'colors': Color(0xffD9F1EB)},
  //   'Micro Jobs': {'colors': Color(0xffD9E7F3)},
  //   'Jobs': {'colors': Color(0xffFFE1BF)}
  // };
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                'See all',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: GlobalVariables.blue),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[0],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[0],
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[1],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[1],
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[2],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[2],
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[3],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[3],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[4],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[4],
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[5],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[5],
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[6],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[6],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[7],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[7],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorss[8],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      categories[8],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
