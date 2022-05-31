part of login_view;



class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(210, 40),
              textStyle: const TextStyle(fontSize: 20),
              primary: const Color.fromARGB(255, 142, 84, 112),
              onPrimary: Colors.white,
            ),
            onPressed: () => Fluttertoast.showToast(
                  msg: 'doldurulacak',
                  fontSize: 20,
                ),
            child: const Text(
              "Sign In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ))
      ],
    );
  }
}