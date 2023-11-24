import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/flat_button.dart';
import 'package:flutter_application_3/screens/login_opt/login_opt.dart';

class Intro extends StatelessWidget {
  static const String routeName = '/intro';

  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              2,
              (i) => Image.asset(
                    "sets/images/val-$i@3x.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ))),
          Positioned(
          width: MediaQuery.of(context).size.width,
          height: 60.0,
          bottom: 50.0,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SCFlatButton(const Text("Get Started"),
                  onTap: () =>
                      Navigator.pushNamed(context, LoginOptions.routeName))))
    ]);
  }
}