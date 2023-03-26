import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_zerotier_platform_interface.dart';

/// An implementation of [FlutterZerotierPlatform] that uses method channels.
class MethodChannelFlutterZerotier extends FlutterZerotierPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_zerotier');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
