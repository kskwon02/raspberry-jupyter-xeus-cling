#docker build . -t seachaos/raspberrypi-jupyter-cpp:python-3.7.0-jupyter
#docker build . -t seachaos/rpi-jupyter-cpp:python-3.7.16-jupyter
#docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:python-3.7.16-jupyter .
docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/x-jupyter-cpp:python-3.7.16-jupyter .