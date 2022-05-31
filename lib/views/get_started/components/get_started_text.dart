part of get_started_view;

class GetStartedText extends StatefulWidget {
  const GetStartedText({Key? key}) : super(key: key);

  @override
  State<GetStartedText> createState() => _GetStartedTextState();
}

class _GetStartedTextState extends State<GetStartedText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 200, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Your everyday ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'meal\n',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF761616),
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'delivered ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'to you',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF761616),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
