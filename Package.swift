// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppodealGoogleAdMobAdapter",
    platforms: [.iOS(.v15)],
    products: [
        // Product must be named APDGoogleAdMobAdapter for runtime class discovery
        .library(
            name: "APDGoogleAdMobAdapter",
            targets: ["AppodealGoogleAdMobAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/appodeal/Appodeal-Swift-Package.git", .upToNextMajor(from: "4.3.0")),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "13.5.0"),
    ],
    targets: [
        .target(
            name: "AppodealGoogleAdMobAdapterWrapper",
            dependencies: [
                .product(name: "Appodeal", package: "Appodeal-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "APDGoogleAdMobAdapter"),
            ],
            path: "Sources",
            sources: ["Exports.swift"]
        ),
        .binaryTarget(
            name: "APDGoogleAdMobAdapter",
            url: "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/SPM/APDGoogleAdMobAdapter/13.5.0.0/APDGoogleAdMobAdapter.xcframework.zip",
            checksum: "fc809a5ad34abfef325ca2c52f62e522b5937adcb0ec42b605b230ce53182b7a"
        ),
    ]
)