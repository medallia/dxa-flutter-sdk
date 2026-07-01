// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "medallia_dxa",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "medallia-dxa", targets: ["medallia_dxa"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/medallia/dxa-ios-flutter-sdk",
            from: "4.0.0"
        )
    ],
    targets: [
        .target(
            name: "medallia_dxa",
            dependencies: [
                .product(
                    name: "medallia-dxa-ios-flutter-sdk",
                    package: "dxa-ios-flutter-sdk"
                )
            ],
            swiftSettings: [
                .define("SWIFT_PACKAGE")
            ]
        ),
    ],
    
    swiftLanguageVersions: [
        .v5
    ]
)
