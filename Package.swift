// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ogg-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "ogg",
			targets: [
				"ogg",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "ogg",
			url: "https://github.com/sbooth/ogg-binary-xcframework/releases/download/0.1.0/ogg.xcframework.zip",
			checksum: "0a500cbd77ea5ace92908968af1aa8acf40f54f0ba90f8b8914a229ea8590f54"),
	]
)
