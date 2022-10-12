FROM python:3

WORKDIR /ts3proxy

COPY ts3proxy /ts3proxy
COPY ts3proxy/config.example.yml /ts3proxy/ts3proxy/config.yml
RUN apt update && apt install python3-yaml && apt clean  && apt autoclean
RUN pip install pyyaml
RUN cp -n config.example.yml config.yml

CMD [ "python", "-m", "ts3proxy" ]