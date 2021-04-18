FROM apachepulsar/pulsar:2.7.1

#ENV KOP_VERSION 2.7.1.3
#ENV KOP_FILENAME pulsar-protocol-handler-kafka-$KOP_VERSION.nar
#ENV KOP_URL https://github.com/streamnative/kop/releases/download/v$KOP_VERSION/$KOP_FILENAME

ENV MOP_VERSION 2.7.1.3
ENV MOP_FILENAME pulsar-protocol-handler-mqtt-$MOP_VERSION.nar
ENV MOP_URL https://github.com/streamnative/mop/releases/download/v$MOP_VERSION/$MOP_FILENAME

RUN mkdir /pulsar/protocols && \
    #curl -fSLo /pulsar/protocols/$KOP_FILENAME $KOP_URL && \
    curl -fSLo /pulsar/protocols/$MOP_FILENAME $MOP_URL

ADD pulsar-protocol-handler-kafka-2.7.1.4-rc-202104151209.nar /pulsar/protocols/
