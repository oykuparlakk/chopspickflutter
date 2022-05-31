part of home_view;


class HomeTodaysOffer extends StatefulWidget {
  const HomeTodaysOffer({Key? key}) : super(key: key);

  @override
  State<HomeTodaysOffer> createState() => _HomeTodaysOfferState();
}

class _HomeTodaysOfferState extends State<HomeTodaysOffer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 194, 142, 164),
                  Color.fromARGB(255, 236, 115, 174)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Row(
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'Today’s Offer \n',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: 'Free Box of Fries\n',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF761616),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'On all others above 200 ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF761616),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -20,
            top: -30,
            child: Container(
              child: Image.asset(
                'assets/images/fries_PNG97884 1.png',
                width: 180,
                height: 120,
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: 180,
              height: 130,
              //color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}