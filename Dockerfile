FROM centos:centos7.9.2009
RUN yum install -y httpd \
 zip \
 unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/honey.zi /var/www/html/
#COPY html /var/www/html/
WORKDIR /var/www/html/
RUN unzip Honey Free Website Template - Free-CSS.com.zip
RUN cp -rvf honey-html/* .
RUN rm -rf honey-html Honey Free Website Template - Free-CSS.comoney.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80 8080 22
