part of food_detail_view;

class AddOnsFood extends StatefulWidget {
  const AddOnsFood({Key? key}) : super(key: key);

  @override
  State<AddOnsFood> createState() => _AddOnsFoodState();
}

class _AddOnsFoodState extends State<AddOnsFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 8, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          AddOnsFoodStack(),
          AddOnsFoodStack(),
          AddOnsFoodStack(),
        ],
      ),
    );
  }
}
