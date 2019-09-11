import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:facebook_app_event/facebook_app_event.dart';

void main() {
  const MethodChannel channel = MethodChannel('facebook_app_event');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FacebookAppEvent.platformVersion, '42');
  });
}
