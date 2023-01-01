//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ar_kit_plugin/ar_kit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ar_kit_plugin_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ArKitPlugin");
  ar_kit_plugin_register_with_registrar(ar_kit_plugin_registrar);
}
