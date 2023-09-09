FROM docker.io/continuumio/miniconda3:23.3.1-0

RUN apt-get update
RUN apt-get -y install git nano dos2unix build-essential

RUN conda create -n exprenv -y python="3.8.3"
SHELL ["conda", "run", "-n", "exprenv", "/bin/bash", "-c"]
COPY requirements.txt ./
RUN sed -e '/^\s*#.*$/d' -e '/^\s*$/d' requirements.txt | xargs -I {} pip install {}