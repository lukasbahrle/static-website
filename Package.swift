// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "TestWebsite",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "TestWebsite",
            targets: ["TestWebsite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", .exact("0.9.0")),
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin", .exact("0.2.0")),
    ],
    targets: [
        .executableTarget(
            name: "TestWebsite",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)
