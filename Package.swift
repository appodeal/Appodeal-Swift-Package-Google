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
            url: "https://appodeal-ios.s3.us-west-1.amazonaws.com/Appodeal/SPM/APDGoogleAdMobAdapter/13.5.0.4/33cd38c2494d/APDGoogleAdMobAdapter.xcframework.zip",
            checksum: "33cd38c2494deb35574ea6d08a57b9f3c7461ced6f39672c879f7ec3fe9804e8"
        ),

    ]
)
