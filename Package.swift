// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ogg-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
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
			url: "https://github.com/sbooth/ogg-binary-xcframework/releases/download/0.1.3/ogg.xcframework.zip",
			checksum: "0c06ea645c6ca187e66442717eb856c09e2b969545e880300639b41f7b83ae98"),
	]
)
