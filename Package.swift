// swift-tools-version:5.6

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
        .package(url: "https://github.com/johnsundell/publish.git", exact: "0.9.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", exact: "0.2.0"),
    ],
    targets: [
        .executableTarget(
            name: "TestWebsite",
            dependencies: [
                .product(name: "Publish", package: "publish"),
                .product(name: "SplashPublishPlugin", package: "splashpublishplugin"),
            ]
        )
    ]
)
