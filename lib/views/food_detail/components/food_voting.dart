part of food_detail_view;

class FoodVoting extends StatefulWidget {
  const FoodVoting({Key? key}) : super(key: key);

  @override
  State<FoodVoting> createState() => _FoodVotingState();
}

class _FoodVotingState extends State<FoodVoting> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Voting(),
        Padding(
          padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
          child: Image.asset(
            'assets/images/30.png',
          ),
        )
      ],
    );
  }
}
