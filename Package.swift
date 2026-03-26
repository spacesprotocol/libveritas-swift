// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Libveritas",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "Libveritas", targets: ["Libveritas", "LibveritasFFI"]),
    ],
    targets: [
        .target(
            name: "Libveritas",
            dependencies: ["LibveritasFFI"],
            path: "Sources/Libveritas"
        ),
        .binaryTarget(
            name: "LibveritasFFI",
            url: "https://github.com/spacesprotocol/libveritas-swift/releases/download/v0.0.0-dev.20260326200151/LibveritasFFI.xcframework.zip",
            checksum: "d55fde44042701902907305a0893dbdfefaf9210d7c50333c896731ff2d411e3"
        ),
    ]
)
