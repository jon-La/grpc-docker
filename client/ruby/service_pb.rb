# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: service.proto

require 'google/protobuf'


descriptor_data = "\n\rservice.proto\x12\nhelloworld\"\x1c\n\x0cHelloRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\"\x1d\n\nHelloReply\x12\x0f\n\x07message\x18\x01 \x01(\t2\xdb\x01\n\x07Greeter\x12>\n\x08SayHello\x12\x18.helloworld.HelloRequest\x1a\x16.helloworld.HelloReply\"\x00\x12\x43\n\rSayHelloAgain\x12\x18.helloworld.HelloRequest\x1a\x16.helloworld.HelloReply\"\x00\x12K\n\x13SayHelloStreamReply\x12\x18.helloworld.HelloRequest\x1a\x16.helloworld.HelloReply\"\x00\x30\x01\x42\x36\n\x1bio.grpc.examples.helloworldB\x0fHelloWorldProtoP\x01\xa2\x02\x03HLWb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Helloworld
  HelloRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("helloworld.HelloRequest").msgclass
  HelloReply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("helloworld.HelloReply").msgclass
end
