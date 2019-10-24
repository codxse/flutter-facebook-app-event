import 'dart:async';

import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class FacebookAppEvent {
  factory FacebookAppEvent() => _instance;

  FacebookAppEvent.private(MethodChannel platformChannel) : _channel = platformChannel;

  final MethodChannel _channel;

  static final FacebookAppEvent _instance = FacebookAppEvent.private(const MethodChannel('facebook_app_event'));

  Future<void> logEvent({@required String name, Map<String, dynamic> parameters}) async {
    await _channel.invokeMethod('logEvent', <String, dynamic>{
      'name': name,
      'parameters': parameters,
    });
  }

  Future<void> logPurchase({
    @required double value,
    Map<String, dynamic> parameters
  }) async {
    await _channel.invokeMethod('logPurchase', <String, dynamic>{
      'value': value,
      'parameters': parameters,
    });
  }

  Future<void> setUserId(String id) async {
    await _channel.invokeMethod('setUserId', id);
  }

  Future<void> clearUserData() async {
    await _channel.invokeMethod('clearUserData');
  }
}