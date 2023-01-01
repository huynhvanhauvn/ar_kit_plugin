#import "ArKitPlugin.h"
#if __has_include(<ar_kit_plugin/ar_kit_plugin-Swift.h>)
#import <ar_kit_plugin/ar_kit_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ar_kit_plugin-Swift.h"
#endif

@implementation ArKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftArKitPlugin registerWithRegistrar:registrar];
}
@end
