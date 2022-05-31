part of food_detail_view;



class Starting extends StatefulWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
  }
}