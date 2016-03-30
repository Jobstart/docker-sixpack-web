FROM buildpack-deps:jessie-curl

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip

ENV SIXPACK_WEB_PORT=5001

RUN pip install sixpack

EXPOSE 5001

CMD [ "sixpack-web" ]
