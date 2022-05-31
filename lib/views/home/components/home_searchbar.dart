part of home_view;

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({Key? key}) : super(key: key);

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 240, 175, 203)),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 7),
          Text(
            'Search',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
