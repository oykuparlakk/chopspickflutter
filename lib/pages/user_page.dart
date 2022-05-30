import 'package:chopspickflutter/pages/basket_page.dart';
import 'package:chopspickflutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int currentIndex = 0;
  final screens = [
    const UserPage(),
    const Basket(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 248, 248),
      //body:screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          selectedFontSize: 16,
          backgroundColor: const Color.fromARGB(255, 254, 248, 248),
          selectedItemColor: const Color.fromARGB(255, 180, 40, 108),
          unselectedItemColor: const Color.fromARGB(255, 236, 115, 174),
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
              ),
              label: 'Basket',
            ),
          ]),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: ListView(children: [
              Column(
                children: [
                  //greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      greetings(),
                      //notification
                      greetingsNotifications(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //search bar
                  searchBar(),
                  const SizedBox(height: 15),
                  foodsFilter(),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Promotions',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 115, 114, 114)),
                        ),
                      ),
                    ],
                  ),
                  todaysOffer(),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Most Popular',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 115, 114, 114)),
                        ),
                      ),
                    ],
                  ),
                  mostPopularFood(),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget greetings() => Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi, Kayla!',
            style: TextStyle(
              color: Color.fromARGB(255, 115, 114, 114),
              fontWeight: FontWeight.normal,
              fontSize: 26,
            ),
          ),
          const Text(
            'What do you want to order today?',
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
    );

Widget foodsFilter() => Row(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 175, 203),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/foto.png'),
                radius: 40,
              ),
              Text(
                'All',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('assets/images/burger_sandwich_PNG4135 1.png'),
                radius: 40,
              ),
              Text(
                'Burger',
                style: const TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('assets/images/pizza-clip-art-8 1.png'),
                radius: 40,
              ),
              Text(
                'Pizza',
                style: const TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                    'assets/images/199-1996165_cheese-pizza-png-tranhsparent-png 1.png'),
                radius: 40,
              ),
              Text(
                'Dessert',
                style: const TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );

Widget greetingsNotifications() => Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 175, 203),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(20),
      child: const Icon(
        Icons.notifications,
        color: Color.fromARGB(255, 255, 255, 255),
        size: 26.0,
      ),
    );

Widget searchBar() => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 240, 175, 203)),
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          const SizedBox(width: 7),
          Text(
            'Search',
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );

Widget mostPopularFood() => Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFD9C9C9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 160,
                    height: 190,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/burger.png',
                                  width: 150,
                                  height: 120,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Bison Burgers',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '30',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFB4AC03)),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 60),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/artı.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 25),

                  //diğer card
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFD9C9C9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 160,
                    height: 190,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/tatlı.png',
                                  width: 150,
                                  height: 120,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Bison Burgers',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '30',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFB4AC03)),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 60),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/artı.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

Widget todaysOffer() => Center(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 194, 142, 164),
                  Color.fromARGB(255, 236, 115, 174)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Row(
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'Today’s Offer \n',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: 'Free Box of Fries\n',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF761616),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'On all others above 200 ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF761616),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -20,
            top: -30,
            child: Container(
              child: Image.asset(
                'assets/images/fries_PNG97884 1.png',
                width: 180,
                height: 120,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: 180,
              height: 130,
              //color: Colors.blue,
            ),
          ),
        ],
      ),
    );
