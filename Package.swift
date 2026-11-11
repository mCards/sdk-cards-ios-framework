// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CardsSDK",
    platforms: [.iOS(.v14)],
    products: [
        // Supply matching models without requiring access to an internal repository.
        .library(name: "CardsSDK", targets: ["CardsSDK", "CoreSDK"]),
        .library(name: "CoreSDK", targets: ["CoreSDK"]),
    ],
    targets: [
        .binaryTarget(name: "CardsSDK", path: "Sources/CardsSDK.xcframework"),
        .binaryTarget(name: "CoreSDK", path: "Sources/CoreSDK.xcframework"),
    ]
)
