FROM python:3
COPY . /
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt
ENV HONEYCOMB_API_KEY=abc123
ENTRYPOINT [ "python3", "server.py" ]
EXPOSE 5000
