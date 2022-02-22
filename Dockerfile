FROM php:7.4-apache


RUN apt update && apt install -y git 

WORKDIR C:/wamp64/www/kubernetes/pruebakubernetes

COPY  v1.php C:/wamp64/www/kubernetes/pruebakubernetes 

RUN git clone https://github.com/AngelaOlmo21/kubernetes.git .

RUN docker build https://github.com/AngelaOlmo21/kubernetes.git 