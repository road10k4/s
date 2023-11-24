import 'package:flutter/material.dart';


import '../main_page/main_page.dart';
import '/components/image_button.dart';
import '/components/flat_button.dart';
import '/configurations/styles.dart';

class LoginOptions extends StatelessWidget {
  static const String routeName = '/intro/login_opt';

  const LoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('sets/images/1.png'),
          fit: BoxFit.cover,
        ),
      )),
      // semi-transparent overlay
      Container(
          decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.5),
      )),
      Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SCFlatButton(
                const SCImageButton('sets/images/google_logo.png',
                    'Continue with Google'),
                textColor: Styles.primaryTextColor,
                backgroundColor: Colors.white,
                onTap: () => _signupTapped(context),
              )))
    ]));
  }

  Future _signupTapped(BuildContext context) async {
    // NOTE we're simulating login here for now
    Navigator.of(context).pushNamed(Main.routeName);
  }
}