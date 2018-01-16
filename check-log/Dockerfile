FROM perl:latest
RUN mkdir /myapp
COPY cpanfile log-to-json.pl /myapp/
WORKDIR /myapp
RUN cpanm --installdeps .
CMD [ "./log-to-json.pl" ]