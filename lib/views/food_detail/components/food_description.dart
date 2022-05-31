part of food_detail_view;


class FoodDescription extends StatefulWidget {
  const FoodDescription({Key? key}) : super(key: key);

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(40, 20, 8, 8),
      child: Text(
        'Big juicy beef burger with beef, lettuce, tomato, onions and special sauce! ',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF787878)),
      ),
    );
  }
}