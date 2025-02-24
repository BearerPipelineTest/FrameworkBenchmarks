FROM rust:1.62

ADD ./ /xitca-web
WORKDIR /xitca-web

RUN rustup default nightly-2022-07-18
RUN cargo clean
RUN RUSTFLAGS="-C target-cpu=native" cargo build --release --bin xitca-web --features raw,simd

EXPOSE 8080

CMD ./target/release/xitca-web
