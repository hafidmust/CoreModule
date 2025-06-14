// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CoreModule",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "CoreModule",
            targets: ["CoreModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hafidmust/CoreModule.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "CoreModule",
            dependencies: []),
        .testTarget(
            name: "CoreModuleTests",
            dependencies: ["CoreModule"]),
    ]
) 