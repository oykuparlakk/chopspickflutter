part of food_detail_view;

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              textStyle: const TextStyle(fontSize: 20),
              primary: const Color(0xFFCC1A74),
              onPrimary: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () => Fluttertoast.showToast(
                  msg: 'doldurulacak',
                  fontSize: 20,
                ),
            child: const Text(
              "Get Started",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ))
      ],
    );
  }
}
