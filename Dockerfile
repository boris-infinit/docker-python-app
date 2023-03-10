FROM python:3.9.9-slim-buster


WORKDIR /work
ADD . /work
RUN apt -y update && apt install -y git
RUN pip install -r requirements.txt

COPY ./demo/getcommitid.sh /getcommitid.sh
RUN chmod 777 /getcommitid.sh

EXPOSE 5000
CMD [ "python", "/app/main.py" ]
