FROM almalinux:9
#ADD is used to copy files from local system or from remote url to the image
ADD https://raw.githubusercontent.com/bradtraversy/50projects50days/refs/heads/master/drink-water/index.html /tmp/
# tar file can be added and it will be automatically extracted in the image
ADD sample.tar.gz /tmp/

EXPOSE 8080

#STEPS:
    #1. Build this image { docker build -t lakshmi1530/add:1.0.0 . }
    #2 run the image { docker run -d -p 8080:80 lakshmi1530/add:1.0.0 }
    #3 access the application in browser { http://localhost:8080 }
    #4 log into the container { docker exec -it <container_id> bash }
    #5 check the content of /tmp directory { ls /tmp }