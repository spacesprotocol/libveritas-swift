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
            url: "https://github.com/spacesprotocol/libveritas-swift/releases/download/v0.0.0-dev.20260322185531/LibveritasFFI.xcframework.zip",
            checksum: "0e0099aae8fb8d3b870e6494ba267080390d914f3d76fe0c9685180624369349"
        ),
    ]
)
