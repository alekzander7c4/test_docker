FROM alpine

RUN apk update && apk upgrade
RUN apk add python3
RUN apk add py-pip
RUN apk add git
RUN cd /opt && git clone https://github.com/alekzander7c4/test_repo.git
RUN cd /opt/test_repo && pip install -r requirements.txt

WORKDIR /opt/test_repo

EXPOSE 5000

CMD [ "python3", "main.py" ]
