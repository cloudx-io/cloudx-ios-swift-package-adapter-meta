import CloudXMetaAdapter
import CloudXMetaAdapterPackage
import XCTest

final class CloudXMetaAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMetaAdapterVersion, "6.22.0.1")
        XCTAssertNotNil(NSClassFromString("CLXMetaInitializer"))
    }
}
