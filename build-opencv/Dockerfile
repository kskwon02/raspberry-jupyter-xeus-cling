FROM seachaos/raspberrypi-jupyter-cpp:python-3.7.0-basic
WORKDIR /root/
ADD ./install_opencv_4.3.0.sh /root/install_opencv_4.3.0.sh
RUN chmod +x ./install_opencv_4.3.0.sh && ./install_opencv_4.3.0.sh
RUN pip3 install -U pip setuptools
RUN apt-get install -y python-opencv python3-numpy
RUN pip3 install matplotlib numpy jupyter


ADD ./Scripts/setup_jupyter.sh /root/setup_jupyter.sh
RUN chmod +x /root/setup_jupyter.sh && /root/setup_jupyter.sh

CMD chown jupyter -R  /notebook && su jupyter -- /home/jupyter/run.sh

