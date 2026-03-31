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
            url: "https://github.com/spacesprotocol/libveritas-swift/releases/download/v0.0.0-dev.20260331155756/LibveritasFFI.xcframework.zip",
            checksum: "c78e166c5e08354ef0a7137e9a4b30025dbf6cd01d27b2ffcc19e0d6a7feadcf"
        ),
    ]
)
