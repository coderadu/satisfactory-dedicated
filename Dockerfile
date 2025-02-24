FROM ubuntu

WORKDIR /server

# Install dependencies

RUN apt update && apt upgrade -y
RUN apt install -y curl zip lib32gcc-s1 openssl

# Expose ports

EXPOSE 15777
EXPOSE 15000
EXPOSE 7777

# Set Volume

VOLUME /server/config

# Add file permissions

RUN useradd server
RUN mkdir /home/server

COPY run.sh .
RUN chmod +x run.sh
RUN chmod a+rwx -R /server
RUN chmod a+rwx -R /home/server

CMD [ "./run.sh" ]
