FROM python:3-slim

# <jebian:jessie

LABEL maintainer="Takuya Ono" \
      description="summpy https://github.com/recruit-tech/summpy on Docker"

RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates wget git\
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

RUN pip install janome && \
    pip install -e git+https://github.com/boarnasia/summpy.git@python3#egg=summpy

CMD ["python", "-m", "summpy.server", "-H", "0.0.0.0", "-p", "8080"]


