#import "OfflinePlugin.h"
#if __has_include(<offline/offline-Swift.h>)
#import <offline/offline-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "offline-Swift.h"
#endif

@implementation OfflinePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOfflinePlugin registerWithRegistrar:registrar];
}
@end
