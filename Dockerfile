FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-devel
RUN apt-get update && apt-get install libgl1-mesa-glx -y
RUN pip install tensorboard opencv-python
RUN apt-get install libglib2.0-dev -y
RUN pip install matplotlib
RUN pip install pandas
RUN pip install seaborn
RUN pip install scipy
RUN pip install thop

RUN apt-get install openssh-server vim -y
RUN apt-get install git -y
RUN mkdir /run/sshd
RUN pip install autopep8

CMD ["bin/bash"]


