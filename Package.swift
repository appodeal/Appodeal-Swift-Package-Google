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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", from: "13.12.0"),
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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/APDGoogleAdMobAdapter/13.12.0.0/6d9d9cd761d6/APDGoogleAdMobAdapter.xcframework.zip",
            checksum: "6d9d9cd761d63eef2df4632b3783efb1a7f32dd8db3ffbf352f578381bb6fa27"
        ),

    ]
)
