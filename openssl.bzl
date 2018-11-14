def envoy_openssl_dependencies():
    native.sh_binary(
        name = "envoy_openssl",
        srcs = [":envoy_openssl.sh"],
)

