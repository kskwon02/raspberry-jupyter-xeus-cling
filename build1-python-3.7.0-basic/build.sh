#docker build . -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:python-3.7.16-basic
docer buildx build --platform=linux/amd64,linux/arm64 -t docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:3.7.16-basic .
