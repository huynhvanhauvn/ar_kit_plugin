
import 'ar_kit_plugin_platform_interface.dart';

class ArKitPlugin {
  Future<String?> getPlatformVersion() {
    return ArKitPluginPlatform.instance.getPlatformVersion();
  }
}
