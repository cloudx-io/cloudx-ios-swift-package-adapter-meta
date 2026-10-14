@import CloudXMetaAdapter;
@import CloudXMetaAdapterPackage;
@import XCTest;

@interface CloudXMetaAdapterObjCTests : XCTestCase
@end

@implementation CloudXMetaAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMetaAdapterVersion, @"6.22.0.1");
    XCTAssertNotNil(NSClassFromString(@"CLXMetaInitializer"));
}

@end
