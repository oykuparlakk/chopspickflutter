import 'package:chopspickflutter/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_page.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          '2 items in Card',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 54, 53, 53),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  foodBasket(),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Order Instructions',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 64, 63, 63)),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '',
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 64, 63, 63)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/30.png',
                        ),
                      ),
                    ],
                  ),
                  Row(
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
                            "Checkout",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget foodBasket() => Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 17, 0),
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9C9C9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 1,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                              'assets/images/199-1996165_cheese-pizza-png-tranhsparent-png 1.png'),
                          radius: 85,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                          child: Text(
                            'Bison Burger',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            'assets/images/30.png',
                          ),
                        )
                      ],
                    ),
                    Row(
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
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
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
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(),
        Column(),
      ],
    );
