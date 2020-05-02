import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline/offline.dart';

void main() {
  const MethodChannel channel = MethodChannel('offline');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Offline.platformVersion, '42');
  });
}
