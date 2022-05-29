import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Colors.white.withOpacity(0.2),
        overflowRules: const OverflowRules.all(true),
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD11770), Color(0xFF644AB5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
              ),
            ),
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: getStartedImage()),
              Container(
                margin: const EdgeInsets.fromLTRB(40, 200, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    getStartedText(),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: getStartedButton()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getStartedImage() => const CircleAvatar(
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/images/foto.png'),
      radius: 200,
    );

Widget getStartedText() => RichText(
      text: const TextSpan(
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: 'Your everyday ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'meal\n',
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFF761616),
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'delivered ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'to you',
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFF761616),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

Widget getStartedButton() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.white,
              onPrimary: const Color(0xFF644AB5),
            ),
            onPressed: () => Fluttertoast.showToast(
                  msg: 'doldurulacak',
                  fontSize: 20,
                ),
            child: const Text(
              "Get Started",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ))
      ],
    );
