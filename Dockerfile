ARG version="18.04"
FROM ubuntu:$version
RUN echo "version ....."$version
ARG Licensekey="100.999.4556"
# First Dockerfile ....
LABEL MAINTAINER ys@apps.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "Image is built at `date`"
RUN echo "The Licence Key is"$Licensekey
#ENTRYPOINT ["sh","/code/Sample.sh" ]
#CMD sh ["/code/testfile"]
CMD echo "Container Being Built"
CMD env
