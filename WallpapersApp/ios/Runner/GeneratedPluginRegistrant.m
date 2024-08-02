//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<image_downloader/ImageDownloaderPlugin.h>)
#import <image_downloader/ImageDownloaderPlugin.h>
#else
@import image_downloader;
#endif

#if __has_include(<open_file/OpenFilePlugin.h>)
#import <open_file/OpenFilePlugin.h>
#else
@import open_file;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [ImageDownloaderPlugin registerWithRegistrar:[registry registrarForPlugin:@"ImageDownloaderPlugin"]];
  [OpenFilePlugin registerWithRegistrar:[registry registrarForPlugin:@"OpenFilePlugin"]];
}

@end
