part of food_detail_view;

class FoodImage extends StatefulWidget {
  const FoodImage({Key? key}) : super(key: key);

  @override
  State<FoodImage> createState() => _FoodImageState();
}

class _FoodImageState extends State<FoodImage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/burger1.png',
          width: 400,
          height: 220,
        ),
      ],
    );
  }
}
