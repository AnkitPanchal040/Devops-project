FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD abc.zip
WORKDIR /var/www/html/
RUN unzip abc.zip
RUN cp -rvf abc/* .
RUN rm -rf abc abc.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80
