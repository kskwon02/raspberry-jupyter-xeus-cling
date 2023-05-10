#FROM seachaos/raspberrypi-jupyter-cpp:python-3.7.0-opencv
#FROM seachaos/rpi-jupyter-cpp:python-3.7.16-opencv
FROM docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:3.7.16-opencv
#FROM rpi-jupyter-cpp:xeus-cling-0.13.0-opencv
RUN apt update -y && apt intall -y nodejs npm nano mc curl wget 

WORKDIR /root/source
ADD ./install_jupyter_opencv.sh ./install_jupyter_opencv.sh
RUN chmod +x ./install_jupyter_opencv.sh  && ./install_jupyter_opencv.sh

CMD chown jupyter -R /notebook && su jupyter -- /home/jupyter/run.sh
