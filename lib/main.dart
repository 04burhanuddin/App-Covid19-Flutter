import 'package:covid19_indonesia/ui/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // mengatur agar tampilan tetap mode potrait
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // menghilangkan banner debug
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // halaman yang pertama kali di jalankan adalah
      // splashScreen
      home: SplashScreen(),
    );
  }
}
