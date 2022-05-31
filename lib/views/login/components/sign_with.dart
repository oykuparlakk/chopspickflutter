part of login_view;



class SignWith extends StatefulWidget {
  const SignWith({Key? key}) : super(key: key);

  @override
  State<SignWith> createState() => _SignWithState();
}

class _SignWithState extends State<SignWith> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text(
                              '-Or Sign in with-',
                              style: TextStyle(
                                color: Color.fromARGB(255, 115, 114, 114),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          );
  }
}