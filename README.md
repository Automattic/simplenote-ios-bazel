An experimental (_work in progress!_) version of [Simplenote iOS](https://github.com/Automattic/simplenote-ios/) built with [Bazel](https://bazel.build/).

## Build

```
bazel build //App:SimpleBazel
```

To generate the Xcode project, install [XCHammer](https://github.com/pinterest/xchammer), then run:

```
/usr/local/bin/xchammer.app/Contents/MacOS/xchammer generate xchammer.yml
```

Note that we need to run from `/usr/local` because of [this issue](https://github.com/pinterest/xchammer/issues/182) and because the XCHammer binary is not vendored.

## Run

```
bazel run //App:SimpleBazel
```

*Tip:* build _and_ run, with

```
bazel build //App:SimpleBazel && bazel run //App:SimpleBazel
```
