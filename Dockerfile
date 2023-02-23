FROM python:3.9.9-slim-buster


WORKDIR /
ADD . /
RUN pip install -r requirements.txt

COPY ./demo/getcommitid.sh /
RUN chmod 777 /getcommitid.sh

EXPOSE 5000
CMD [ "python", "/app/main.py" ]
