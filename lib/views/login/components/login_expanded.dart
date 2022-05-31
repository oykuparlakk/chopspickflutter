part of login_view;

class LoginExpanded extends StatefulWidget {
  const LoginExpanded({Key? key}) : super(key: key);

  @override
  State<LoginExpanded> createState() => _LoginExpandedState();
}

class _LoginExpandedState extends State<LoginExpanded> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 252, 225, 225),
              Color.fromARGB(255, 252, 225, 225),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              SignIn(),
              SizedBox(
                height: 10,
              ),
              SignWith(),
              SocialMedia(),
              SignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
