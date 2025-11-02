// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.5.501"
let checksum = "5396227d290acacd20c1f8134ee1c10bd620580dc7fc9505f8ac1e410a367262"

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["openssl"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/passepartoutvpn/openssl-apple/releases/download/\(version)/\(filename)",
            checksum: checksum
        ),

        // local development
//        .binaryTarget(
//            name: "openssl",
//            path: "frameworks/openssl.xcframework.zip")
    ]
)
