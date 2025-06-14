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
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.1"),
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.4")
    ],
    targets: [
        .target(
            name: "CoreModule",
            dependencies: [
                "Alamofire",
                "Swinject"
            ]),
        .testTarget(
            name: "CoreModuleTests",
            dependencies: ["CoreModule"]),
    ]
) 