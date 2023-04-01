FROM debian:bullseye-slim

#
# Update the sources list
#

RUN echo "deb http://ftp.se.debian.org/debian bullseye main" > /etc/apt/sources.list && \
    echo "deb-src http://ftp.se.debian.org/debian bullseye main" >> /etc/apt/sources.list && \
    echo "deb http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/sources.list && \
    echo "deb-src http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/sources.list

# 
# Install latest clang
# 

RUN apt update && apt upgrade -y
RUN apt install -y lsb-release wget software-properties-common gnupg2
RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

# 
# Set up repository for clang tools
# 

RUN add-apt-repository 'deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main'
RUN wget https://apt.llvm.org/llvm-snapshot.gpg.key
RUN apt-key add llvm-snapshot.gpg.key
RUN apt update

# 
# Install other dependencies
# 

RUN wget http://mirrors.kernel.org/ubuntu/pool/main/libf/libffi/libffi6_3.2.1-8_amd64.deb
RUN dpkg -i libffi6_3.2.1-8_amd64.deb
RUN apt install -y python3-pip cmake git ninja-build clang-format-11
RUN pip3 install conan

# 
# Setup environment variables for CMake compiler detection and some symbolic links
# 

RUN ln -s /usr/bin/clang-15 /usr/bin/clang
RUN ln -s /usr/bin/clang++-15 /usr/bin/clang++
RUN ln -s /usr/bin/ninja /usr/local/bin/ninja

ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++

# 
# Prepare build scripts
# 

CMD chmod +x /home/work/scripts/*
