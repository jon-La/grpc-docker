python_protoc:
	python -m grpc_tools.protoc -I . --python_out=server/python --pyi_out=server/python --grpc_python_out=server/python service.proto


ruby_protoc:
	grpc_tools_ruby_protoc -I . --ruby_out=client/ruby --grpc_out=client/ruby service.proto
