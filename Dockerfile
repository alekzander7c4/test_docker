FROM alpine AS compile-image

RUN     apk update &&\
        apk add python3 py-pip git py3-virtualenv &&\
        cd /opt && git clone https://github.com/alekzander7c4/test_repo.git &&\
        cd /opt/test_repo && python3 -m venv venv && source ./venv/bin/activate && pip install -r /opt/test_repo/requirements.txt

FROM alpine AS runtime-image

RUN     apk update &&\
        apk add python3

WORKDIR /opt/test_repo

COPY --from=compile-image /opt/test_repo /opt/test_repo

EXPOSE 5000

CMD [ "/opt/test_repo/venv/bin/python3", "/opt/test_repo/main.py" ]