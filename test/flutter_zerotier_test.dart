import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zerotier/flutter_zerotier.dart';
import 'package:flutter_zerotier/flutter_zerotier_platform_interface.dart';
import 'package:flutter_zerotier/flutter_zerotier_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterZerotierPlatform
    with MockPlatformInterfaceMixin
    implements FlutterZerotierPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterZerotierPlatform initialPlatform = FlutterZerotierPlatform.instance;

  test('$MethodChannelFlutterZerotier is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterZerotier>());
  });

  test('getPlatformVersion', () async {
    FlutterZerotier flutterZerotierPlugin = FlutterZerotier();
    MockFlutterZerotierPlatform fakePlatform = MockFlutterZerotierPlatform();
    FlutterZerotierPlatform.instance = fakePlatform;

    expect(await flutterZerotierPlugin.getPlatformVersion(), '42');
  });
}
