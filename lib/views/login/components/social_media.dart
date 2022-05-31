part of login_view;

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/facebook.png'),
          const SizedBox(
            width: 10,
          ),
          Image.asset('assets/images/Twitter_bird_logo_2012 1.png'),
          const SizedBox(
            width: 10,
          ),
          Image.asset('assets/images/985_google_g_icon 1.png')
        ],
      ),
    );
  }
}
