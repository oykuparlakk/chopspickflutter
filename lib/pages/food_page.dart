import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 194, 142, 164),
                Color.fromARGB(255, 236, 115, 174)
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
                    Image.asset(
                      'assets/images/burger1.png',
                      width: 400,
                      height: 220,
                    ),
                  ],
                ),

                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        // topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 254, 249, 249),
                          Color.fromARGB(255, 255, 255, 255),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                voting(),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                  child: Image.asset(
                                    'assets/images/30.png',
                                  ),
                                )
                              ],
                            ),
                            starting(),
                            foodDescription(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 5, 0, 0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Add Ons',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 20, 8, 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  addOnsFood(),
                                  addOnsFood(),
                                  addOnsFood(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            getStartedButton(),
                          ],
                        ),
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

Widget getStartedButton() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              textStyle: const TextStyle(fontSize: 20),
              primary: const Color(0xFFCC1A74),
              onPrimary: Color.fromARGB(255, 255, 255, 255),
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
Widget voting() => Row(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/Rectangle.png',
              width: 180,
              height: 120,
            ),
            Positioned(
              right: 60,
              top: 45,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Group.png',
                  ),
                  const Text(
                    '4.6',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );

Widget foodDescription() => const Padding(
      padding: EdgeInsets.fromLTRB(40, 20, 8, 8),
      child: Text(
        'Big juicy beef burger with beef, lettuce, tomato, onions and special sauce! ',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF787878)),
      ),
    );

Widget addOnsFood() => Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                    'assets/images/553-5538312_healthy-food-plate-png-transparent-png 1.png'),
                radius: 40,
              ),
            ],
          ),
        ),
        Positioned(
          top: 60,
          right: 0,
          child: Image.asset('assets/images/artı.png'),
        ),
      ],
    );

Widget starting() => Row(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Text(
            'Bison Burger',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          width: 120,
        ),
        Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/Remove circle outline.png',
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  '1',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 7,
                ),
                Image.asset(
                  'assets/images/Add circle outline.png',
                ),
              ],
            ),
          ],
        )
      ],
    );
