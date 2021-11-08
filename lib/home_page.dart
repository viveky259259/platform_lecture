import 'package:flutter/material.dart';
import 'package:platform_lecture/platform_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  late PlatformService service;
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    service = PlatformService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Value: $counter',
          style: TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          counter = await service.incrementCounter();

          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
