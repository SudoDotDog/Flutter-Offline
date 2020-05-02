import 'dart:async';

import 'package:flutter/services.dart';

class Offline {
  static const MethodChannel _channel =
      const MethodChannel('offline');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
