import CloudXMetaAdapter
import CloudXMetaAdapterPackage
import XCTest

final class CloudXMetaAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMetaAdapterVersion, "6.21.1.0")
        XCTAssertNotNil(NSClassFromString("CLXMetaInitializer"))
    }
}
