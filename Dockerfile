FROM ubuntu:15.10
MAINTAINER sails xu <sailsxu@qq.com>

ENV LC_ALL C.UTF-8
# 时间
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

RUN mv /etc/apt/sources.list /etc/apt/sources.list_bak
RUN echo "deb http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse" >> /etc/apt/sources.list

# 安装一些软件
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get remove -y vim-common
# 在docker中，它运行的是non-interactive shell，所以不能弹出dialog
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils bash-completion vim cmake gcc g++ gdb git curl libcurl4-gnutls-dev unzip build-essential automake libtool python


# private and public 端口映射，但是不要这么做，因为如果指定了public端口，
# 那么在一个主机上就只能运行一个容器实例，要映射端口，可以在运行时通过-p指定
# EXPOSE 80:8080

