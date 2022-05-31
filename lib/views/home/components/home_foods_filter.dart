part of home_view;

class HomeFoodsFilter extends StatefulWidget {
  const HomeFoodsFilter({Key? key}) : super(key: key);

  @override
  State<HomeFoodsFilter> createState() => _HomeFoodsFilterState();
}

class _HomeFoodsFilterState extends State<HomeFoodsFilter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 175, 203),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/foto.png'),
                radius: 40,
              ),
              Text(
                'All',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('assets/images/burger_sandwich_PNG4135 1.png'),
                radius: 40,
              ),
              Text(
                'Burger',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFD9C9C9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('assets/images/pizza-clip-art-8 1.png'),
                radius: 40,
              ),
              Text(
                'Pizza',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(width: 15),
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
                    'assets/images/199-1996165_cheese-pizza-png-tranhsparent-png 1.png'),
                radius: 40,
              ),
              Text(
                'Dessert',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }
}
