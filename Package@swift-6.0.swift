// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "Zip",
  products: [
    .library(name: "Zip", targets: ["Zip"])
  ],
  targets: [
    .target(
      name: "Minizip",
      dependencies: [],
      exclude: ["module"],
      linkerSettings: [
        .linkedLibrary("z")
      ]
    ),
    .target(
      name: "Zip",
      dependencies: ["Minizip"],
      exclude: ["minizip", "zlib"]
    ),
    .testTarget(
      name: "ZipTests",
      dependencies: ["Zip"],
      resources: [.process("Resources")]
    )
  ],
  swiftLanguageModes: [.v6]
)
