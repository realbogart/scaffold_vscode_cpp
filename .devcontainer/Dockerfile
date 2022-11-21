FROM debian:bookworm-slim

RUN apt update && apt upgrade -y
RUN apt install -y lsb-release wget software-properties-common gnupg2
RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
RUN ln -s /usr/bin/clang-15 /usr/bin/clang
RUN ln -s /usr/bin/clang++-15 /usr/bin/clang++

RUN apt install -y pip cmake git
RUN pip3 install conan ninja
