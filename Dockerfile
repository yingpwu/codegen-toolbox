FROM kdvolder/jdk8
LABEL "Mail":"yingpwu93@gmail.com"\
	  "version":"v1.3.6"
ENV RUN_USER daemon
ENV RUN_GROUP daemon
ENV INSTALL_DIR /codegen/

ARG CODEGEN_VERSION=v1.3.6

EXPOSE 52011

WORKDIR ${INSTALL_DIR}
COPY codegen-toolbox-${CODEGEN_VERSION}-linux-x64 /codegen/

CMD ["./startup.sh"]