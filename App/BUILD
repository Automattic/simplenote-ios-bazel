load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

# What does this mean?
licenses(["notice"])

swift_library(
    name = "Sources",
    srcs = [
        "Sources/AppDelegate.swift",
        "Sources/ViewController.swift",
    ],
    data = [
        "Resources/Main.storyboard",
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
    launch_storyboard = "Resources/LaunchScreen.storyboard",
    minimum_os_version = "13.0",
    deps = [":Sources"],
)
