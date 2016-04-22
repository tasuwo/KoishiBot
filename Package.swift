import PackageDescription

let package = Package(
        name: "kawaiko-chan-slack-bot",
        dependencies: [
          .Package(url: "https://github.com/tomohisa/SwiftSlackBotter.git", majorVersion: 0, minor: 1),
        ])
