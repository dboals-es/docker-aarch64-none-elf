FROM ubuntu:20.04
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update && apt-get install -y \
    gdb-multiarch \
    git \
    make \
    ssh \
    wget

RUN systemctl ssh start
run systemctl ssh enable

RUN cd ~ && wget https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-elf.tar.xz
RUN cd ~ && mkdir aarch64-none-elf && tar -xf gcc-arm-10.2-2020.11-x86_64-aarch64-none-elf.tar.xz --directory ~/aarch64-none-elf  --strip-components=1
RUN mkdir -p /usr/opt/aarch64-none-elf
RUN mv ~/aarch64-none-elf/* /usr/opt/aarch64-none-elf
RUN ln -s /usr/opt/aarch64-none-elf/bin/aarch64-none-elf-gcc /usr/bin/aarch64-none-elf-gcc
RUN ln -s /usr/opt/aarch64-none-elf/bin/aarch64-none-elf-ar /usr/bin/aarch64-none-elf-ar
RUN ln -s /usr/opt/aarch64-none-elf/bin/aarch64-none-elf-as /usr/bin/aarch64-none-elf-as
RUN ln -s /usr/opt/aarch64-none-elf/bin/aarch64-none-elf-ld /usr/bin/aarch64-none-elf-ld
RUN ln -s /usr/opt/aarch64-none-elf/bin/aarch64-none-elf-objcopy /usr/bin/aarch64-none-elf-objcopy
