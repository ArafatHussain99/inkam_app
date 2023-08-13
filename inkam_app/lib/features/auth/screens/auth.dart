import 'package:flutter/material.dart';
import 'package:inkam_app/constants/global_variables.dart';
import 'package:inkam_app/features/auth/screens/signin.dart';
import 'package:inkam_app/features/auth/screens/signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  List phoneNumbers = ['01682055023', '01779671064'];
  int text = 0;
  TextEditingController mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 40,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            side: const BorderSide(
                              color: GlobalVariables.blue,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          setState(() {
                            if (text == 0) {
                              text = 1;
                            } else {
                              text = 0;
                            }
                          });
                          print(mobileNumberController.text);
                        },
                        child: text == 0
                            ? const Text(
                                'English',
                                style: TextStyle(color: GlobalVariables.blue),
                              )
                            : const Text('বাংলা'))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  text == 0
                      ? 'Welcome to \nInkam App'
                      : 'স্বাগতম \nইনকাম অ্যাপ',
                  style: const TextStyle(
                      fontSize: 30,
                      color: GlobalVariables.blue,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  text == 0 ? 'Enter Mobile Number' : 'মোবাইল নম্বর লিখুন',
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: mobileNumberController,
                  onChanged: (text) {
                    if (mobileNumberController.text.length == 11) {
                      setState(() {});
                    } else {
                      setState(() {});
                    }
                  },
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: text == 0 ? 'Mobile Number' : 'মোবাইল নম্বর'),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                if (phoneNumbers.contains(mobileNumberController.text)) {
                  Navigator.pushNamed(context, SignInScreen.id);
                } else {
                  Navigator.pushNamed(context, SignUpScreen.id);
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: mobileNumberController.text.length != 11
                        ? GlobalVariables.inactive
                        : GlobalVariables.orange,
                    borderRadius: BorderRadius.circular(4)),
                child: const Center(
                    child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
