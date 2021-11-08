import 'package:flutter/services.dart';

class PlatformService {
  // method calls

  static const MethodChannel counterMethodChannel =
      MethodChannel('counterMethodChannel');

  Future<int> incrementCounter() async {
    // call native channel
    // increment counter number
    // return counter number

    var result = await counterMethodChannel.invokeMethod('increment');

    return result;
  }
}
