//
//  Package.swift
//  
//
//  Created by Mariam Elenna on 23/06/2026.
//

import Foundation
// Package.swift

let package = Package(
    name: "Framework",
    products: [
        .library(
            name: "Framework",
            targets: ["Framework"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Framework",
            url: "https://github.com/MariamElenna/FrameworkBinary/releases/download/1.0.0/Framework.xcframework.zip",
            checksum: "الـ checksum"
        )
    ]
)
