FROM python:3

RUN pip install flask

RUN mkdir -p /Users/michaelkabongo/Documents/github/gitops_test/apps/flaskapp
WORKDIR /Users/michaelkabongo/Documents/github/gitops_test/app
COPY main.py .
ENV FLASK_APP=/Users/michaelkabongo/Documents/github/gitops_test/app/main.py

ENV APP_NAME=MyApp.DevOps
ENV APP_VERSION=v1.0.0

CMD ["flask", "run", "--host=127.0.0.1"]
