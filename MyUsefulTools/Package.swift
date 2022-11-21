// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyUsefulTools",
    products: [
        .executable(name: "greeting", 
                    targets: ["greeting"]),
        .plugin(name: "MyCommand", targets: ["MyCommand"])
    ],
    dependencies: [],
    targets: [
        .executableTarget(name: "greeting"),
        .plugin(
            name: "MyCommand",
            capability: .command(
                intent: .custom(verb: "do-something", description: "This is a sample command!"),
                permissions: [.writeToPackageDirectory(reason: "testing")]
            )
        )
    ]
)
