part of food_detail_view;

class AddOnsFoodStack extends StatefulWidget {
  const AddOnsFoodStack({Key? key}) : super(key: key);

  @override
  State<AddOnsFoodStack> createState() => _AddOnsFoodStackState();
}

class _AddOnsFoodStackState extends State<AddOnsFoodStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: const [
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
  }
}
