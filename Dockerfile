# Copyright (C) 2022 Carry Assistant Trolley (C.A.T) Technologies

FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl git unzip
RUN git clone https://github.com/CAT-Technologies/license_checker.git
WORKDIR "/license_checker"
ENTRYPOINT ["/root/.deno/bin/deno", "run", "--unstable", "--allow-read", "https://deno.land/x/license_checker@v3.1.2/main.ts"]
