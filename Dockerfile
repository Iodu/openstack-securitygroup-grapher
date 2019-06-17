FROM alpine
RUN apk add python3
RUN apk add python3-dev
RUN apk add --no-cache py-cryptography
RUN apk add linux-headers
RUN apk add gcc
RUN apk add musl-dev
RUN apk add ghostscript-fonts
RUN pip3 install shade
RUN pip3 install ansible
RUN apk add graphviz
RUN apk add git
WORKDIR /home
