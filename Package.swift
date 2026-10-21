// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APDGoogleAdMobAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "APDGoogleAdMobAdapter",
            targets: ["APDGoogleAdMobAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/appodeal/Appodeal-Swift-Package.git", .upToNextMajor(from: "4.3.0")),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", from: "13.5.0"),
    ],
    targets: [
        .target(
            name: "APDGoogleAdMobAdapterWrapper",
            dependencies: [
                .product(name: "AppodealSDK", package: "Appodeal-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "APDGoogleAdMobAdapter"),
            ],
            path: "Sources",
            sources: ["Exports.swift"]
        ),
        .binaryTarget(
            name: "APDGoogleAdMobAdapter",
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/APDGoogleAdMobAdapter/13.5.0.3/1dbc3c938f2c/APDGoogleAdMobAdapter.xcframework.zip",
            checksum: "1dbc3c938f2c0d87c1fe8141b93e4f7f6ac856227048e699942525dc56bd5c99"
        ),

    ]
)
