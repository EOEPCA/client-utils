FROM python:3.9

WORKDIR /app
ENV PATH="/app:${PATH}"

RUN python -m pip install -U pip && \
    pip install -U wheel

COPY app .
RUN pip install -r python/requirements.txt

ENTRYPOINT [ "bash", "-c" ]
CMD [ "usage" ]
