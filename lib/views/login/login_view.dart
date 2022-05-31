library login_view;

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'components/login_text.dart';
part 'components/login_input.dart';
part 'components/login_expanded.dart';
part 'components/sign_in.dart';
part 'components/sign_up.dart';
part 'components/social_media.dart';
part 'components/sign_with.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 244, 148, 148),
                Color.fromARGB(255, 200, 99, 148)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: Column(
              children: const [
                //Text
                LoginText(),
                SizedBox(
                  height: 10,
                ),
                //input
                LoginInput(),

                LoginExpanded(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
