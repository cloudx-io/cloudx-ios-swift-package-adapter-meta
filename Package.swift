// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXMetaAdapter",
    platforms: [
        .iOS(.v13),
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
            exact: "6.21.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMetaAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-meta/6.21.1.0/CloudXMetaAdapter.xcframework.zip",
            checksum: "78fa4112dea217b411352389ba28baa0360242c1ab118512b3166373b43a25e8"
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
