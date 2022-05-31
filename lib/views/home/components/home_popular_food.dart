part of home_view;

class PopularFood extends StatefulWidget {
  const PopularFood({Key? key}) : super(key: key);

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9C9C9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 160,
                    height: 190,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/burger.png',
                                  width: 150,
                                  height: 120,
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Bison Burgers',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      '30',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFB4AC03)),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 60),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/artı.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 25),

                  //diğer card
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9C9C9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 160,
                    height: 190,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/tatlı.png',
                                  width: 150,
                                  height: 120,
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Bison Burgers',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      '30',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFB4AC03)),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 60),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/artı.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
