#docker build . -t seachaos/raspberrypi-jupyter-cpp:python-3.7.0-opencv
#docker build . -t  docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:python-3.7.16-opencv
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:3.7.16-opencv .
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/x-jupyter-cpp:miniconda-4.10.3-opencv .
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-4.10.3-opencv .
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-4.9.2-opencv .
 docker buildx build --platform=linux/amd64,linux/arm64 --push -t registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-py38_23.3.1_0-opencv .
