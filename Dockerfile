FROM python:3.8-alpine

COPY LICENSE \
        README.md \
        entrypoint.sh \
        codespell-problem-matcher/codespell-matcher.json \
        requirements.txt \
        /code/

RUN pip install -r /code/requirements.txt
RUN apk add --no-cache bash

ENTRYPOINT ["/code/entrypoint.sh"]
CMD []
