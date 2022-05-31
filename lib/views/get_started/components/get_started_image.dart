part of get_started_view;

class GetStartedImage extends StatefulWidget {
  const GetStartedImage({Key? key}) : super(key: key);

  @override
  State<GetStartedImage> createState() => _GetStartedImageState();
}

class _GetStartedImageState extends State<GetStartedImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/images/foto.png'),
        radius: 200,
      ),
    );
  }
}
