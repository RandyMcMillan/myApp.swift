// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "myApp.swift",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/randymcmillan/nostr-sdk-ios.git", .upToNextMajor(from: "0.1.0"))

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "myApp",
            dependencies: [
                           .product(name: "NostrSDK", package: "nostr-sdk-ios")
                   ]),
        .testTarget(
            name: "myAppTests",
            dependencies: ["myApp"]),
    ]
)
