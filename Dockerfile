FROM python:3.9.8

WORKDIR /app

EXPOSE 8000:8000

COPY ./requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

# CMD [ "python", "server.py" ]

#CMD ["uvicorn", "application.main:app", "--host", "0.0.0.0", "--port", "8800"]
CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload" ]
#CMD ["uvicorn", "application.main:app"]