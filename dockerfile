FROM alpine:latest
USER root

RUN mkdir /input 
RUN mkdir /content

COPY /input /input
copy test.json /content

RUN echo "Hello World!!"

FROM streamsets/datacollector:latest
USER root

COPY --chown=sdc:sdc --from=0 /content .

