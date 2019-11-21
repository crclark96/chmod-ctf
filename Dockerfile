FROM ubuntu:18.04

COPY flag.txt /flag.txt

RUN chmod -R -x /bin /sbin /usr /lib64

COPY dash /bin/dash
COPY bash /bin/bash
COPY .bashrc /root/.bashrc

RUN /lib/x86_64-linux-gnu/ld-2.27.so /bin/chmod +x /bin/chmod

CMD bash
