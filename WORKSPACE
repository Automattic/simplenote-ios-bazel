# This is the Bazel workspace file where all the dependencies from the outside
# world are defined.
#
# This config comes from the reccomendation of the rules_apple README.
#
# See:
# https://github.com/bazelbuild/rules_apple/tree/facc14b1b4c0f81d8cbf8f77edf349b3f6a7c651#quick-setup
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "55f4dc1c9bf21bb87442665f4618cff1f1343537a2bd89252078b987dcd9c382",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.20.0/rules_apple.0.20.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

# This comes from the reccomendation of build_bazel_rules_swift. Whitout it,
# we get an error regarding @rules_python//python:defs.bzl.
#
# See:
# https://github.com/bazelbuild/rules_swift/tree/6ae82f57ebefa13df5ce1daf7a2fd3080e41df55#2-configure-your-workspace
load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()
