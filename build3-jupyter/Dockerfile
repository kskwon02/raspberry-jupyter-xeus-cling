#FROM seachaos/raspberrypi-jupyter-cpp:python-3.7.0-opencv
#FROM seachaos/rpi-jupyter-cpp:python-3.7.16-opencv
#FROM docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:3.7.16-opencv
#FROM docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:miniconda-4.10.3-opencv
#FROM docker.dev.ust21.kr/kskwon02/x-jupyter-cpp:miniconda-4.10.3-opencv
#FROM registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-4.10.3-opencv
#FROM registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-4.9.2-opencv
FROM registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-py38_23.3.1_0-opencv
#FROM x-jupyter-cpp:miniconda-4.10.3-opencv
#FROM rpi-jupyter-cpp:xeus-cling-0.13.0-opencv
RUN apt-get update -y && apt-get install -y nodejs npm nano mc curl wget 
WORKDIR /root/source
ADD ./install_jupyter_opencv.sh ./install_jupyter_opencv.sh
RUN chmod +x ./install_jupyter_opencv.sh  && ./install_jupyter_opencv.sh

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g npm
CMD chmod -R 766 /opt/conda

CMD chown jupyter -R /notebook && su jupyter -- /home/jupyter/run.sh

