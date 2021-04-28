
import 'dart:async';

import 'package:flutter/services.dart';

class CcAvenuePlugin {
  static const MethodChannel _channel =
      const MethodChannel('cc_avenue_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> paymentGatewaySDK(int orderId) async {
    final String response = await _channel.invokeMethod('paymentGatewaySDK', [orderId ]);
    return response;
  }
}
