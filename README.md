# cacfactory
A Fedora-based container image for building [ComplianceAsCode](https://github.com/ComplianceAsCode/content) artifacts. Hosted at [quay.io](https://quay.io/repository/smileyfritz/cacfactory)

### Building ComplianceAsCode artifacts
Simply specify the ComplianceAsCode product to build using the `SCAP_PRODUCT` environment variable:
```
mkdir build
podman run -e SCAP_PRODUCT='rhel8' -v ./build:/opt/ComplianceAsCode/build:z quay.io/smileyfritz/cacfactory:latest
```
Created artifacts - including SCAP contents and Ansible playbooks - will then be available in the local 'build' directory.
