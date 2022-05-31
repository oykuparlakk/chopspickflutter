library get_started_view;

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

part 'components/get_started_image.dart';
part 'components/get_started_text.dart';
part 'components/get_started_button.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
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
            children: const [
              GetStartedImage(),
              GetStartedText(),
              GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
