FROM alpine:3.18.4

MAINTAINER SSSSSSL <SSSSSSL@github.com>

ARG PACKAGE_JDK="openjdk8"
ARG PACKAGE_SHELL="bash"

ARG JMETER_VERSION="5.6"
ARG JMETER_URL="https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.zip"

ARG TEMP_DIR="/tmp/tmp_jmeter"

ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}
ENV JMETER_BIN ${JMETER_HOME}/bin
ENV JMETER_LIB ${JMETER_HOME}/lib


RUN	   apk update \
	&& apk add ${PACKAGE_JDK} \
	&& apk add ${PACKAGE_SHELL} \
	&& mkdir -p /opt \
	&& mkdir -p ${TEMP_DIR} \
	&& wget -P ${TEMP_DIR} ${JMETER_URL} \
	&& unzip -d /opt ${TEMP_DIR}/apache-jmeter-${JMETER_VERSION}.zip \
	&& rm -rf ${TEMP_DIR}


COPY jmeter-plugins-influxdb2-listener-2.7.jar 		${JMETER_LIB}
COPY mqtt-xmeter-2.0.2-jar-with-dependencies.jar	${JMETER_LIB}

ENV PATH $PATH:$JMETER_BIN

CMD [ "jmeter" ]

 
