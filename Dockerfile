FROM perl:latest
RUN mkdir /myapp
COPY config.json cpanfile hitos.json hitos.pl /myapp/
WORKDIR /myapp
RUN cpanm --installdeps .
CMD [ "plackup", "./hitos.pl" ]