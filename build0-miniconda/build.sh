#docker build . -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:python-3.7.16-basic
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:miniconda-4.10.3-basic .
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/x-jupyter-cpp:miniconda-4.10.3-basic .
docker buildx build --platform=linux/amd64,linux/arm64 --push -t registry.s-100.io/kskwon02/miniconda3:py38_23.3.1_0-buster .
#docker buildx build --platform=linux/amd64,linux/arm64 -t docker.dev.ust21.kr/kskwon02/x-jupyter-cpp:miniconda-4.10.3-basic .
#docker buildx build --platform=linux/amd64,linux/arm64 -t x-jupyter-cpp:miniconda-4.10.3-basic .
