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

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
#RUN npm install -g npm
#CMD chmod -R 777 opt/conda/share/jupyter/lab
#RUN conda install --yes -n base -c conda-forge papermill black
#RUN conda install --yes -n base -c conda-forge jupyterlab_widgets
#RUN conda install --yes -n base -c conda-forge ipywidgets
#RUN conda install --yes -c conda-forge ipyleaflet
#RUN conda install --yes -c conda-forge xleaflet
#RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
#RUN jupyter labextension install jupyter-leaflet
RUN apt-get install -y --no-install-recommends \
        #alsa-base \
        alsa-utils \
        libsndfile1-dev 
RUN apt-get install -y portaudio19-dev python-pyaudio python3-pyaudio && apt-get autoremove -y
RUN pip install --upgrade jupyterlab

RUN pip install bqplot pyyaml pyaudio scipy numpy matplotlib pandas

RUN conda install nodejs
#RUN chmod -R a+rw /dev/snd 
RUN chown jupyter -R /opt/conda 
RUN chown jupyter -R /notebook 
CMD su jupyter -- /home/jupyter/run.sh

