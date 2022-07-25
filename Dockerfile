FROM centos:7
MAINTAINER ahdatascientist@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
<<<<<<< HEAD
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
=======
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/royal.zip /var/www/html/
>>>>>>> 7e4ac828273d7215a237a76d27d7aa619c33c943
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
