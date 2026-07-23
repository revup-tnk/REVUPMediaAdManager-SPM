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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.6.0"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaAdManager.zip",
            checksum: "49cfe963ded71407ad37d3e1a2848fde92a9be2fb275c699ee44a40d1713d211"
        ),
    ]
)
