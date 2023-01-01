import 'package:flutter_test/flutter_test.dart';
import 'package:ar_kit_plugin/ar_kit_plugin.dart';
import 'package:ar_kit_plugin/ar_kit_plugin_platform_interface.dart';
import 'package:ar_kit_plugin/ar_kit_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockArKitPluginPlatform
    with MockPlatformInterfaceMixin
    implements ArKitPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ArKitPluginPlatform initialPlatform = ArKitPluginPlatform.instance;

  test('$MethodChannelArKitPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelArKitPlugin>());
  });

  test('getPlatformVersion', () async {
    ArKitPlugin arKitPlugin = ArKitPlugin();
    MockArKitPluginPlatform fakePlatform = MockArKitPluginPlatform();
    ArKitPluginPlatform.instance = fakePlatform;

    expect(await arKitPlugin.getPlatformVersion(), '42');
  });
}
