FROM almalinux:9
#ENTRYPOINT ["ping", "google.com"] : This wont allow to override the command at runtime.
#CMD ["ping", "google.com"]: This will allow to override the command at runtime.
ENTRYPOINT ["ping"]
CMD ["google.com"] 
# by using both ENTRYPOINT and CMD instructions, we can set a default command that can be overridden at runtime.