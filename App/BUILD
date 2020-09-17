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
    deps = [
        "@SAMKeychain//:SAMKeychain",
    ],
)

filegroup(
    name = "Icon.xcassets",
    srcs = glob(["Resources/Icon.xcassets/**"]),
)

ios_application(
    name = "SimpleBazel",
    app_icons = [":Icon.xcassets"],
    bundle_id = "example.simplebazel",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":Info.plist"],
    launch_storyboard = "Resources/LaunchScreen.storyboard",
    minimum_os_version = "13.0",
    deps = [
        ":Sources",
        # Simperium fails with the following error
        #
        # ERROR: /private/var/tmp/_bazel_gio/d7e803566b23d6494f8565a0ccaee9c5/external/Simperium/BUILD.bazel:274:13: in non_arc_srcs attribute of objc_library rule @Simperium//:DiffMatchPach: source file '@Simperium//:External/diffmatchpatch/DiffMatchPatchCFUtilities.c' is misplaced here (expected .m or .mm)
        # ERROR: /private/var/tmp/_bazel_gio/d7e803566b23d6494f8565a0ccaee9c5/external/Simperium/BUILD.bazel:274:13: in non_arc_srcs attribute of objc_library rule @Simperium//:DiffMatchPach: '@Simperium//:External/diffmatchpatch/DiffMatchPatchCFUtilities.c' does not produce any objc_library non_arc_srcs files (expected .m or .mm)
        #
        # Possibly related to https://github.com/pinterest/PodToBUILD/issues/146
        #
        # "@Simperium//:Simperium",
    ],
)
