part of home_view;

class HomeViewGreetings extends StatefulWidget {
  const HomeViewGreetings({Key? key}) : super(key: key);

  @override
  State<HomeViewGreetings> createState() => _HomeViewGreetingsState();
}

class _HomeViewGreetingsState extends State<HomeViewGreetings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hi, Kayla!',
            style: TextStyle(
              color: Color.fromARGB(255, 115, 114, 114),
              fontWeight: FontWeight.normal,
              fontSize: 26,
            ),
          ),
          Text(
            'What do you want to order today?',
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
    );
  }
}
