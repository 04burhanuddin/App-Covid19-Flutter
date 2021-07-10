part of 'screens.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void nextScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
  }

  startTImer() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, nextScreen);
  }

  @override
  void initState() {
    super.initState();
    startTImer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
            )
          ],
        ),
      ),
    );
  }
}
