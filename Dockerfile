FROM python:3.9.8

COPY ./application ./application

COPY ./cert/ ./cert

COPY ./server.py ./server.py

COPY ./requirements.txt ./requirements.txt

WORKDIR .

EXPOSE 9990:9990

RUN pip install -r requirements.txt

CMD [ "python", "server.py" ]