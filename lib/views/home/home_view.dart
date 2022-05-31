library home_view;

import 'package:flutter/material.dart';



/*
import '../../pages/basket_page.dart';
import '../../pages/user_page.dart';*/

part 'components/home_greetings.dart';
part 'components/home_greetings_notifications.dart';
part 'components/home_searchbar.dart';
part 'components/home_foods_filter.dart';
part 'components/home_todays_offer.dart';
part 'components/home_popular_food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
   // const UserPage(),
    //const Basket(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 248, 248),
      //body: screens[currentIndex],
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
                    children: const [
                      HomeViewGreetings(),
                      //notification
                      HomeViewGreetingsNotifications(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //search bar
                  const HomeSearchBar(),
                  const SizedBox(height: 15),
                  const HomeFoodsFilter(),
                  const SizedBox(height: 25),
                  Row(
                    children: const [
                      Padding(
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
                  const HomeTodaysOffer(),
                  Row(
                    children: const [
                      Padding(
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
                  const PopularFood(),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
