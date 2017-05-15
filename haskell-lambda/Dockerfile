FROM fpco/stack-build:lts-8.13

WORKDIR /usr/lib/gcc/x86_64-linux-gnu/5/
RUN cp crtbeginT.o crtbeginT.o.orig
RUN cp crtbeginS.o crtbeginT.o
