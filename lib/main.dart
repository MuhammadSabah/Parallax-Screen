import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parallax_screen/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Parallax Screen',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
