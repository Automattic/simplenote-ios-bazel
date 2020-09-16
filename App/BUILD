load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

# What does this mean?
licenses(["notice"])

swift_library(
    name = "Sources",
    srcs = [
        "Sources/AppDelegate.swift",
        "Sources/SceneDelegate.swift",
        "Sources/ContentView.swift",
    ],
)

ios_application(
    name = "SimpleBazel",
    bundle_id = "example.simplebazel",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":Info.plist"],
    minimum_os_version = "13.0",
    deps = [":Sources"],
)
