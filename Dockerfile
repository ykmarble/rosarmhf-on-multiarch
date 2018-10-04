FROM multiarch/ubuntu-core:armhf-xenial
RUN mkdir /src
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list && apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 
RUN apt-get update && apt-get install -y ros-kinetic-ros-base 
RUN rosdep init && rosdep update 
RUN echo "source /opt/ros/kinetic/setup.bash" > /root/.bashrc
WORKDIR /src
ENTRYPOINT ["/bin/bash", "-cl"]
