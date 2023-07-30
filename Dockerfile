FROM python:3.10-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

ENV PORT=8888

EXPOSE 8888

RUN pip install -r requirements.txt

COPY . /app

# ENTRYPOINT [ "python" ]

# CMD [ "server.py" ]

# Start the container and keep it running indefinitely
CMD tail -f /dev/null