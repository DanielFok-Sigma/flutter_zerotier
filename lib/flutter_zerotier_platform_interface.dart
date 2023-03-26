import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_zerotier_method_channel.dart';

abstract class FlutterZerotierPlatform extends PlatformInterface {
  /// Constructs a FlutterZerotierPlatform.
  FlutterZerotierPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterZerotierPlatform _instance = MethodChannelFlutterZerotier();

  /// The default instance of [FlutterZerotierPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterZerotier].
  static FlutterZerotierPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterZerotierPlatform] when
  /// they register themselves.
  static set instance(FlutterZerotierPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
