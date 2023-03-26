
import 'flutter_zerotier_platform_interface.dart';

class FlutterZerotier {
  Future<String?> getPlatformVersion() {
    return FlutterZerotierPlatform.instance.getPlatformVersion();
  }
}
