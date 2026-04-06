// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaAdManager",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaAdManager",
            targets: ["REVUPMediaAdManagerTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaAdManager.zip",
            checksum: "bd5c41226ad19cc2e3f77e5e1910703774892bb4fb02b2b9bfc36b8d05e710f2"
        ),
    ]
)
