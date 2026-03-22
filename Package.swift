// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.6.200"
let checksum = "c0026a9d72c10284623a7d3845244b5505728b9c81478b19a687a6300f8d5771"

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
            url: "https://github.com/partout-io/openssl-apple/releases/download/\(version)/\(filename)",
            checksum: checksum
        ),

        // local development
//        .binaryTarget(
//            name: "openssl",
//            path: "frameworks/openssl.xcframework.zip")
    ]
)
