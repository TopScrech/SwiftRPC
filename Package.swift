// swift-tools-version:6.2.1

import PackageDescription

let package = Package(
    name: "SwordRPC",
    products: [
        .library(name: "SwordRPC", targets: ["SwordRPC"])
    ],
    dependencies: [
        // https://github.com/Kitura/BlueSocket
        .package(url: "https://github.com/Kitura/BlueSocket.git", from: "2.0.4")
    ],
    targets: [
        .target(
            name: "SwordRPC",
            dependencies: [
                .product(name: "Socket", package: "bluesocket")
            ]
        )
    ]
)
