FROM ubi8/ubi:8.3

MAINTAINER Sakar<sakar@yahoo.com>

LABEL description="This is a simple httpd apache server"

RUN yum install -y httpd && \\
yum clean all

RUN echo "Hello and welcome" > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]  	

