FROM ubuntu:18.04
MAINTAINER ahdatascientist@gmail.com
RUN apt install -y apache2 \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/royal.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip royal.zip
RUN cp -rvf royal/* .
RUN rm -rf royal.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
