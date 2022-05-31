part of food_detail_view;

class Voting extends StatefulWidget {
  const Voting({Key? key}) : super(key: key);

  @override
  State<Voting> createState() => _VotingState();
}

class _VotingState extends State<Voting> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
  }
}
