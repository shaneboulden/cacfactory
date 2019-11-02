FROM quay.io/fedora/fedora:31-x86_64
USER root
RUN dnf install -y cmake make openscap-scanner git python3-pip  && \
  rm -rf /var/cache/yum/* && pip3 install pytest pyyaml jinja2 && \
  mkdir /opt/ComplianceAsCode && \
  git clone https://github.com/ComplianceAsCode/content /opt/ComplianceAsCode
WORKDIR /opt/ComplianceAsCode

CMD ["sh", "-c", "./build_product ${SCAP_PRODUCT}"]
