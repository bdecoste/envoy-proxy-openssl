workspace(name = "envoy")

load("//bazel:repositories.bzl", "envoy_dependencies", "GO_VERSION")
load("//bazel:cc_configure.bzl", "cc_configure")

envoy_dependencies()
cc_configure()

load("@envoy_api//bazel:repositories.bzl", "api_dependencies")
api_dependencies()

load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")
go_rules_dependencies()
go_register_toolchains(go_version = GO_VERSION)

http_archive(
    name = "bssl_wrapper",
    sha256 = "5d010d6fe3e1ab5b2891e6d74b0849d4184cdd0302493a3c96f28cbe69d4ecd0",
    strip_prefix = "bssl_wrapper-0.3",
    url = "https://github.com/bdecoste/bssl_wrapper/archive/0.3.tar.gz",
)

new_local_repository(
    name = "openssl",
    path = "/usr/local/lib64",
    build_file = "openssl.BUILD"
)

