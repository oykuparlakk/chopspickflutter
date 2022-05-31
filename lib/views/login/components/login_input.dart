part of login_view;

class LoginInput extends StatefulWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.0),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //input
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.0),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
