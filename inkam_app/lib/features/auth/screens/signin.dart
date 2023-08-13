import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inkam_app/features/home/screens/home_screen.dart';

import '../../../constants/global_variables.dart';

class SignInScreen extends StatefulWidget {
  static const String id = '/signIn';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  int text = 0;
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  List OTP = ['12345'];
  String currentOTP = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                  text == 0 ? 'Enter PIN Number' : 'PIN নম্বর লিখুন',
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          controller: otp1,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          controller: otp2,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin2) {},
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          controller: otp3,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin3) {},
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          controller: otp4,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin4) {},
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          controller: otp5,
                          onChanged: (value) {
                            currentOTP =
                                '${otp1.text}${otp2.text}${otp3.text}${otp4.text}${otp5.text}';
                            setState(() {});
                          },
                          onSaved: (pin5) {},
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    final snackBar = SnackBar(
                      duration: Duration(seconds: 1),
                      content:
                          const Text('OTP doesnt match please check again'),
                    );
                    if (OTP.contains(currentOTP)) {
                      Navigator.pushNamed(context, HomeScreen.id);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: currentOTP.length != 5
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
            )
          ]),
    )));
  }
}
