// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Framework",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Framework",
            targets: ["FrameworkWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/amplitude/Amplitude-Swift.git",
            from: "1.18.6"
        )
    ],
    targets: [
        .binaryTarget(
            name: "FrameworkBinary",
            url: "https://github.com/MariamElenna/FrameworkBinary/releases/download/1.0.5/Framework.xcframework.zip",
            checksum: "8f0ac0f29c2ab12bff437fb3e7322520b7b6754dedca586d34c20977225b7967"
        ),
        .target(
            name: "FrameworkWrapper",
            dependencies: [
                "FrameworkBinary",
                .product(name: "AmplitudeSwift", package: "Amplitude-Swift")
            ],
            path: "Sources/FrameworkWrapper"
        )
    ]
)
