// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Fiber",
    products: [
        .library(name: "Fiber", targets: ["Fiber"])
    ],
    targets: [
        .target(
            name: "Fiber",
            dependencies: [],
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "FiberTests",
            dependencies: ["Fiber"],
            exclude: ["Info.plist"]
        )
    ]
)
