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
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-meta/6.22.0.0/CloudXMetaAdapter.xcframework.zip",
            checksum: "870bd1d354a45edfb57790cbb70a7c84be38e24ceeee0fa7eb2d379797243f0e"
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
