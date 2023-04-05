FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip
RUN unzip *.zip
#RUN cp -rvf fri* .
#RUN rm -rf abc abc.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80
