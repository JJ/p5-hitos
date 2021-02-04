FROM perl:latest
RUN mkdir /myapp
ADD cpanfile config/hitos.json hitos.psgi lib /myapp/
WORKDIR /myapp
RUN cpanm --installdeps .
CMD [ "plackup", "./hitos.pl" ]
