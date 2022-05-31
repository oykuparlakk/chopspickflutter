part of login_view;

class LoginText extends StatefulWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  State<LoginText> createState() => _LoginTextState();
}

class _LoginTextState extends State<LoginText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 120, 0, 0),
          child: const Text(
            'Login to your Account',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 27, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
