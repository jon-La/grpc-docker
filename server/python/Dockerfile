FROM python:3.9-alpine3.17

WORKDIR /app

ADD . /app

RUN pip install  -r requirements.txt



# FROM python:3
#
# ADD server.py .
# COPY --from=builder /pip-dependencies /pip-dependencies
# ENV PYTHONPATH="${PYTHONPATH}:/pip-dependencies"
EXPOSE 8089


CMD ["python", "server.py"]
