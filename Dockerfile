# Copyright (C) 2022 Carry Assistant Trolley (C.A.T) Technologies

FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl git unzip
RUN git clone https://github.com/CAT-Technologies/license_checker.git
WORKDIR "/license_checker"
ENTRYPOINT ["echo", "check license", "https://github.com/CAT-Technologies/GrocerEase/blob/devel/Main%20Program/main_program.cpp"]
