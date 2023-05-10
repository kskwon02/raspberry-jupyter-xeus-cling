#docker build . -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:python-3.7.16-basic
docker buildx build --platform=linux/amd64,linux/arm64 --push -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:3.7.16-basic .
