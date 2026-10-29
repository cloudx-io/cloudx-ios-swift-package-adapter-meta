@import CloudXMetaAdapter;
@import CloudXMetaAdapterPackage;
@import XCTest;

@interface CloudXMetaAdapterObjCTests : XCTestCase
@end

@implementation CloudXMetaAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMetaAdapterVersion, @"6.22.1.0");
    XCTAssertNotNil(NSClassFromString(@"CLXMetaInitializer"));
}

@end
