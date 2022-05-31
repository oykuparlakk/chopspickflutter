part of home_view;


class HomeViewGreetingsNotifications extends StatefulWidget {
  const HomeViewGreetingsNotifications({Key? key}) : super(key: key);

  @override
  State<HomeViewGreetingsNotifications> createState() => _HomeViewGreetingsNotificationsState();
}

class _HomeViewGreetingsNotificationsState extends State<HomeViewGreetingsNotifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 175, 203),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(20),
      child: const Icon(
        Icons.notifications,
        color: Color.fromARGB(255, 255, 255, 255),
        size: 26.0,
      ),
    );

  }
}