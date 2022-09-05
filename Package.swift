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
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0"),
    ],
    targets: [
        .executableTarget(
            name: "TestWebsite",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)
