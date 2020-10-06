FROM python:3.9

ARG VERSION

RUN pip install zyxelprometheus==$VERSION

ENTRYPOINT ["zyxelprometheus"]
CMD ["-d"]
