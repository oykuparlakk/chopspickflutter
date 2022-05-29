import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 230, 241),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
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
                  const Text(
                    'Promotions',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 115, 114, 114)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 219, 160, 185),
                            Color.fromARGB(255, 236, 115, 174)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -10,
                      child: Container(
                        width: 100,
                        height: 80,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget greetings() => Column(
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
    );

Widget foodsFilter() => Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 175, 203),
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
            color: Color.fromARGB(255, 240, 175, 203),
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
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 175, 203),
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
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 175, 203),
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
      padding: EdgeInsets.all(12),
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
