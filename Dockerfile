FROM openjdk:11
MAINTAINER Vitor Jordão

# Install leiningen
ENV LEIN_ROOT true
RUN curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
-o /usr/local/bin/lein \
&& chmod +x /usr/local/bin/lein

RUN lein

ENTRYPOINT ["lein"]