FROM almalinux:9
RUN dnf install nginx -y
# creating a new user named roboshop and switching to that user
RUN useradd roboshop
USER roboshop
CMD [ "sleep", "100" ]