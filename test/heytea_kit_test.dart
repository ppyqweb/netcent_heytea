import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:heytea_kit/heytea_kit.dart';

void main() {
  const MethodChannel channel = MethodChannel('heytea_kit');

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
    expect(await HeyTeaKit.platformVersion, '42');
  });
}
