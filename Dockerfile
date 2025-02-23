FROM python:3.10
WORKDIR /source
COPY . /source
RUN /source/tools/scripts/docker_setup.sh
WORKDIR /work
EXPOSE 5000
ENTRYPOINT ["/source/tools/scripts/docker_entry.sh"]
