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
            url: "https://github.com/spacesprotocol/libveritas-swift/releases/download/v0.3.1/LibveritasFFI.xcframework.zip",
            checksum: "ced1f39e3e9d568bba7d798fc7a05d99c214d49c1cfb3ff9352b9487f64767f9"
        ),
    ]
)
