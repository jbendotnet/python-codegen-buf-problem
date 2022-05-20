buf/generate:
	@docker run --rm -it \
    -v ${PWD}:/workspace \
    --workdir /workspace \
    bufbuild/buf:1.4.0 \
    generate --include-imports --debug -v

buf/modupdate:
	@docker run --rm -it \
    -v ${PWD}:/workspace \
    --workdir /workspace \
    bufbuild/buf:1.4.0 \
    mod update proto --debug

buf/lint:
	@docker run --rm -it \
    -v ${PWD}:/workspace \
    --workdir /workspace \
    bufbuild/buf:1.4.0 \
    lint --debug

buf/format:
	@docker run --rm -it \
    -v ${PWD}:/workspace \
    --workdir /workspace \
    bufbuild/buf:1.4.0 \
    format -w -d

buf/breaking:
	@docker run --rm -it \
    -v ${PWD}:/workspace \
    --workdir /workspace \
    bufbuild/buf:1.4.0 \
    breaking --exclude-imports --against 'https://github.com/jbendotnet/python-codegen-buf-problem.git#branch=main' --debug
