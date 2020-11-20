mkdir -p ../generated
protoc \
  --proto_path ../src \
  --rust_out ../generated ../src/tracing.proto
