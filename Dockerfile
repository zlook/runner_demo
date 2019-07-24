FROM python:3.6

MAINTAINER zlook

RUN apt-get update

RUN apt-get install -y apt-utils
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get install -y vim nginx wget

RUN pip install django==1.11.7

EXPOSE 80
CMD ["nginx","-g","daemon off;"]