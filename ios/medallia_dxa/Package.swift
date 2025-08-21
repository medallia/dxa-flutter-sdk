// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "medallia_dxa",
    platforms: [
        .iOS("11.0"),
    ],
    products: [
        .library(name: "medallia-dxa", targets: ["medallia_dxa"])
    ],
    dependencies: [],
    targets: [
       
        .target(
            name: "medallia_dxa",
            dependencies: [
                "MedalliaDXAFlutter"
            ],
            path: "Sources/medallia_dxa"
        ),
 
        .binaryTarget(
            name: "MedalliaDXAFlutter", path: "MedalliaDXAFlutter.xcframework"
        ),
    ]
)
