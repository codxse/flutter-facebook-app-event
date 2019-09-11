#import "FacebookAppEventPlugin.h"
#import <facebook_app_event/facebook_app_event-Swift.h>

@implementation FacebookAppEventPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFacebookAppEventPlugin registerWithRegistrar:registrar];
}
@end
