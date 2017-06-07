FROM java:8
ENV FOO bar 
COPY  src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld 
RUN mkdir bin2
RUN mkdir bin 
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin", "HelloWorld"]