#import <CloudXMetaAdapter/CloudXMetaAdapter.h>

@interface CloudXMetaAdapterPackageLoader : NSObject
@end

@implementation CloudXMetaAdapterPackageLoader

+ (void)load {
    CloudXMetaAdapterRegister();
}

@end
