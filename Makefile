.PHONY: build

build:
	bazel build //App:SimpleBazel

run: build
	bazel run //App:SimpleBazel

# We need to run XCHammer from /usr/local/bin because of
# https://github.com/pinterest/xchammer/issues/182 and because we are not
# vendoring the binary. In the repo, the maintainer say that at Pinterest they
# vendor the binary for better performance and reliability.
generate_project: build
	/usr/local/bin/xchammer.app/Contents/MacOS/xchammer generate xchammer.yml
