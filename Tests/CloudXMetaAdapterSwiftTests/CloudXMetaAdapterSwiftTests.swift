import CloudXMetaAdapter
import CloudXMetaAdapterPackage
import XCTest

final class CloudXMetaAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMetaAdapterVersion, "6.22.1.0")
        XCTAssertNotNil(NSClassFromString("CLXMetaInitializer"))
    }
}
