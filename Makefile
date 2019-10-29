build.dev:
	docker build -t stylegan-encoder:dev-latest -f ./dev.Dockerfile .

jupyter.dev:	build.dev
	docker run --runtime=nvidia -v ${PWD}:${PWD} -w ${PWD} --net=host --rm -it stylegan-encoder:dev-latest