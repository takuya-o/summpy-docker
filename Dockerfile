FROM python:2.7-slim

# <jebian:jessie

LABEL maintainer="Takuya Ono" \
      description="summpy https://github.com/recruit-tech/summpy on Docker"

RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates wget\
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

RUN pip install janome && pip install summpy

CMD ["python", "-m", "summpy.server", "-h", "0.0.0.0", "-p", "8080"]


