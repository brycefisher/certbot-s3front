FROM python

RUN pip install certbot certbot-s3front

ADD certbot.sh /app/

ENTRYPOINT /app/certbot.sh
