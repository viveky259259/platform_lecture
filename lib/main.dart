import 'package:flutter/material.dart';
import 'package:platform_lecture/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform method',
      home: HomePage(),
    );
  }
}
