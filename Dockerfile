FROM rust:1.74-alpine AS builder
RUN apk add --no-cache musl-dev openssl-dev openssl-libs-static pkgconf
ENV SYSROOT=/dummy
WORKDIR /build
COPY . .
RUN cargo build --bins --release

FROM scratch as runtime
ENV RUST_LOG="info"
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=builder /build/target/release/teloxide_mvp /
CMD ["./teloxide_mvp"]