#FROM seachaos/raspberrypi-jupyter-cpp:python-3.7.0-basic
#FROM seachaos/rpi-jupyter-cpp:python-3.7.16-basic
#FROM docker.dev.ust21.kr/kskwon02/rpi-jupyter-cpp:python-3.7.16-basic
#FROM docker.dev.ust21.kr/kskwon02/x-jupyter-cpp:miniconda-4.10.3-basic
#FROM registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-4.10.3-basic
#FROM registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-4.9.2-basic
FROM registry.s-100.io/kskwon02/x-jupyter-cpp:miniconda-py38_23.3.1_0-basic
#FROM x-jupyter-cpp:miniconda-4.10.3-basic
#FROM rpi-jupyter-cpp:xeus-cling-0.13.0-basic

WORKDIR /root/
ADD ./install_opencv_4.3.0.sh /root/install_opencv_4.3.0.sh
RUN chmod +x ./install_opencv_4.3.0.sh && ./install_opencv_4.3.0.sh
RUN apt-get update -y && apt-get -y install gcc python3-dev
RUN pip3 install -U pip setuptools
RUN apt-get install -y python-opencv python3-numpy
RUN pip3 install matplotlib numpy
RUN apt-get upgrade -y && apt-get -y install python3-psutil
#RUN pip3 install jupyter
RUN pip3 install jupyterlab


ADD ./setup_jupyter.sh /root/setup_jupyter.sh
RUN chmod +x /root/setup_jupyter.sh && /root/setup_jupyter.sh

CMD chown jupyter -R  /notebook && su jupyter -- /home/jupyter/run.sh

