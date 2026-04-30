ARG version
FROM almalinux:${version}
RUN mkdir /app
WORKDIR /app
RUN echo "This is a sample file to demonstrate the use of ARG ${version} in Dockerfile." > sample.txt
CMD ["cat", "sample.txt"]