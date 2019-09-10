FROM ubuntu
LABEL MAINTAINER developer@oracle.com
COPY Sample.sh /Code/Sample.sh
RUN chmod 777 /Code/Sample.sh
COPY test /Code/test
WORKDIR /Code
ENTRYPOINT ["sh", "/Code/Sample.sh"]
CMD ["/Code/test"]
