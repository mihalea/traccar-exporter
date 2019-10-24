from python:3.7

RUN pip install pipenv
ADD src /exporter

WORKDIR /exporter
RUN pipenv lock --requirements > requirements.txt
RUN pip install -r requirements.txt

ENV EXPORTER_PORT 8080

CMD python exporter.py
