// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openssl-apple",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "openssl-apple",
            targets: ["openssl"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/keeshux/openssl-apple/releases/download/3.2.005/openssl.xcframework.zip",
            checksum: "1a78fcc49e0c902bdc7e68882a5c8ba3fb91f12d3a574c2734ba358551d557ca")
    ]
)
