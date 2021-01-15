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
            targets: ["OpenSSL"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
		.binaryTarget(
			name: "OpenSSL",
			url: "https://github.com/genexuslabs/openssl-apple/releases/download/1.1.1i/openssl.xcframework.zip",
			checksum: "043019a43a12b37bcf4d7df9d9a8dc86005081a196fc26b24a3fb5706c3783e5"
		)
    ]
)
