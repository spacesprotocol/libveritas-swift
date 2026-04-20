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
            url: "https://github.com/spacesprotocol/libveritas-swift/releases/download/v0.1.3/LibveritasFFI.xcframework.zip",
            checksum: "400e8eed8e9473f406d0929449585a3833ee8ec7bc2714184165fd938ef80a4c"
        ),
    ]
)
