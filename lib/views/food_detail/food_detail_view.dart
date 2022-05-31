library food_detail_view;

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'components/food_image.dart';
part 'components/voting.dart';
part 'components/food_voting.dart';
part 'components/starting.dart';
part 'components/food_description.dart';
part 'components/add_ons.dart';
part 'components/add_ons_food.dart';
part 'components/add_ons_food_stack.dart';
part 'components/get_started_button.dart';

class FoodDetailView extends StatefulWidget {
  const FoodDetailView({Key? key}) : super(key: key);

  @override
  State<FoodDetailView> createState() => _FoodDetailViewState();
}

class _FoodDetailViewState extends State<FoodDetailView> {
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
                const FoodImage(),

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
                      child: Column(
                        children: const [
                          FoodVoting(),
                          Starting(),
                          FoodDescription(),
                          AddOns(),
                          AddOnsFood(),
                          SizedBox(
                            height: 10,
                          ),
                          GetStartedButton(),
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
