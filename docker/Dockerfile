# Same version as in production
FROM perl:5.24.1

ENV SYBASE /usr

WORKDIR /usr/local/sirius-web-reports

RUN apt-get update && apt-get install -y freetds-dev && apt-get clean

RUN ln -s /usr/lib/x86_64-linux-gnu/libct.* /usr/lib/x86_64-linux-gnu/libsybdb.* /usr/lib

RUN cpanm -n DBI DBD::Sybase

RUN cd /usr/local && git clone https://github.com/racke/sirius-web-reports

RUN git checkout -b topic/docker-dancefloor origin/topic/docker-dancefloor

COPY sirius-web-reports.sh deployment.tt /usr/local/sirius-web-reports/

RUN cpanm -v --notest --installdeps .

EXPOSE 5000

CMD ["/usr/local/sirius-web-reports/sirius-web-reports.sh"]

