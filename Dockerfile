FROM frolvlad/alpine-python-machinelearning:latest

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
RUN apk add build-base
RUN apk add python3-dev

RUN pip install --upgrade pip setuptools

RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt

EXPOSE 4000

ENTRYPOINT ["python"]
CMD ["app.py"]
