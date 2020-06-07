FROM python:3

ADD  ./init.sh /init.sh
ADD  ./cmd.sh /cmd.sh
ADD  ./run.sh /run.sh

RUN chmod +x /init.sh
RUN chmod +x /cmd.sh
RUN chmod +x /run.sh


ENV startup app.py

RUN mkdir -p /app
WORKDIR /app

RUN cd /app

CMD trap 'exit' INT; /init.sh