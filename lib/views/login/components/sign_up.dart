part of login_view;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //'Don’t have an account? Sign up'
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Don’t have an account?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 115, 114, 114),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: '  Sign up',
                  style: TextStyle(
                    color: Color.fromARGB(118, 115, 114, 114),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}