import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              children: [
                //Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                      child: const Text(
                        'Login to your Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //input
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.0),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //input
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.0),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 252, 225, 225),
                          Color.fromARGB(255, 252, 225, 225),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          signIn(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              '-Or Sign in with-',
                              style: TextStyle(
                                color: Color.fromARGB(255, 115, 114, 114),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          socialMedia(),
                          signUp(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget signIn() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(210, 40),
              textStyle: const TextStyle(fontSize: 20),
              primary: const Color.fromARGB(255, 142, 84, 112),
              onPrimary: Colors.white,
            ),
            onPressed: () => Fluttertoast.showToast(
                  msg: 'doldurulacak',
                  fontSize: 20,
                ),
            child: const Text(
              "Sign In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ))
      ],
    );

Widget socialMedia() => Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/images/Twitter_bird_logo_2012.png'),
            SizedBox(height: 40, width: 40, child: getStartedImageGoogle()),
            SizedBox(height: 40, width: 40, child: getStartedImageTwitter()),
            SizedBox(height: 40, width: 40, child: getStartedImageFacebook()),
          ],
        ),
      ),
    );

Widget signUp() => Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //'Don’t have an account? Sign up'
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Don’t have an account?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 115, 114, 114),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: '  Sign up',
                  style: TextStyle(
                    color: Color.fromARGB(118, 115, 114, 114),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget getStartedImageGoogle() => const CircleAvatar(
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/images/985_google_g_icon 1.png'),
      radius: 200,
    );

Widget getStartedImageFacebook() => const CircleAvatar(
      backgroundColor: Colors.white,
      backgroundImage:
          AssetImage('assets/images/facebook-2978305-2669645 1.png'),
      radius: 200,
    );
Widget getStartedImageTwitter() => const CircleAvatar(
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/images/Twitter_bird_logo_2012 1.png'),
      radius: 200,
    );
