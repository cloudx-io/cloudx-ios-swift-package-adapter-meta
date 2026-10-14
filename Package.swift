// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXMetaAdapter",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "CloudXMetaAdapter",
            targets: ["CloudXMetaAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/facebook/FBAudienceNetwork.git",
            exact: "6.22.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-meta/releases/download/binary/6220001.0.0/CloudXMetaAdapter.xcframework.zip",
            checksum: "1ecdd97958c76b5ca18dc7ca4c96311f9af1e4a7a29c3cf7207247d90c974415"
        ),
        .target(
            name: "CloudXMetaAdapterPackage",
            dependencies: [
                "CloudXMetaAdapter",
                "CloudXMetaAdapterRuntime",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
            ]
        ),
        .target(
            name: "CloudXMetaAdapterRuntime",
            dependencies: [
                .product(name: "FBAudienceNetwork", package: "fbaudiencenetwork"),
            ]
        ),
        .testTarget(
            name: "CloudXMetaAdapterSwiftTests",
            dependencies: ["CloudXMetaAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXMetaAdapterObjCTests",
            dependencies: ["CloudXMetaAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
