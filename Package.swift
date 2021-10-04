// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GXOpenSSL",
	platforms: [
		.macOS(.v10_11), .iOS(.v9), .tvOS(.v11), .watchOS(.v4)
	],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GXOpenSSL",
            targets: ["openssl"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
		.binaryTarget(
			name: "openssl",
			url: "https://github.com/genexuslabs/openssl-apple/releases/download/1.1.1i/openssl.xcframework.zip",
			checksum: "fdcf6f4cc1cf88bf8f58fb0c9096105b33860a819bd24c3b61cf1a9f1c42d0d1"
		)
    ]
)
