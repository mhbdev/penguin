#import "PenguinPlugin.h"
#if __has_include(<penguin/penguin-Swift.h>)
#import <penguin/penguin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "penguin-Swift.h"
#endif

@implementation PenguinPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPenguinPlugin registerWithRegistrar:registrar];
}
@end
