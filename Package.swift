// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaAdManager",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaAdManager",
            targets: ["REVUPMediaAdManagerTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.11.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaAdManagerTarget",
            dependencies: [
                .target(name: "REVUPMediaAdManager"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaAdManager",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaAdManager.zip",
            checksum: "99b4617f45c2c945863a6868016cc2eaa640b547fdac96548a5268f936889dcf"
        ),
    ]
)
