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
            targets: ["Framework"]
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
            name: "Framework",
            url: "https://github.com/MariamElenna/FrameworkBinary/releases/download/1.0.4/Framework.xcframework.zip",
            checksum: "62c4cc1cfc23a8b54eb082119e3a9fb5c0dc7d81b5edcd519f44d21960029a2e"
        )
    ]
)
