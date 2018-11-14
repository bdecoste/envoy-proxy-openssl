def envoy_openssl_dependencies():
    sh_binary(
        name = "envoy_openssl",
        srcs = [":envoy_openssl.sh"],
)

