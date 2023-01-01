#include "include/ar_kit_plugin/ar_kit_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ar_kit_plugin.h"

void ArKitPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ar_kit_plugin::ArKitPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
