FROM frolvlad/alpine-python-machinelearning:latest

RUN pip install --upgrade pip

WORKDIR /app
COPY . /app

RUN apk add build-base
RUN apk add python3-dev

RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt


RUN python -m nltk.downloader punkt

EXPOSE 4000

ENTRYPOINT ['python']

CMD ['app.py']
