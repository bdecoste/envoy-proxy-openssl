def envoy_openssl_dependencies():
    native.sh_binary(
        name = "envoy_openssl_script",
        srcs = [":envoy_openssl.sh"],
)

