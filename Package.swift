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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/APDGoogleAdMobAdapter/13.5.0.5/0ae82d730966/APDGoogleAdMobAdapter.xcframework.zip",
            checksum: "0ae82d7309667e5a4fa4baf226f4ab02b7e6a7d90b7bdba83540e2aacc07654d"
        ),

    ]
)
