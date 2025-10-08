// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.5.500"
let checksum = "2ca5f3490b3f19f6630f11b2d3364b4946562adbe0936982073c9aeebf8bd575"

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
