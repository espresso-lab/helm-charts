# Helm Charts by espresso lab ☕️

Welcome to the `helm-charts` repository by **espresso-lab**! This repository contains a collection of Helm charts for deploying various applications and services in Kubernetes, provided as OCI images.

## Table of Contents

- [Getting Started](#getting-started)
- [Available Charts 🚀](#available-charts-🚀)
- [Usage](#usage)
- [License](#license)


## Getting Started

To get started with using the Helm charts in this repository, you need to have Helm installed on your local machine. If you don't have Helm installed, please follow the [official Helm installation guide](https://helm.sh/docs/intro/install/).

## Available Charts 🚀


| Chart Name                         | Link to project                                              |
|------------------------------------|--------------------------------------------------------------|
| **ddns-route53**                   | https://github.com/crazymax/ddns-route53                     |
| **homebridge**                     | https://github.com/homebridge/homebridge                     |
| **kanidm**                         | https://github.com/kanidm/server                             |
| **lldap**                          | https://github.com/nitnelave/lldap                           |
| **oidc-forward-auth-middleware**   | https://github.com/espresso-lab/oidc-forward-auth-middleware |
| **simple-file-transfer**           | https://github.com/espresso-lab/simple-file-transfer         |
| **simple-link-shortener**          | https://github.com/espresso-lab/simple-link-shortener        |
| **webdav-s3-adapter**              | https://github.com/espresso-lab/webdav-s3-adapter            |


For detailed information on each chart, please refer to the specific chart's README file located in its respective directory.

## Usage

This repository provides helm charts as OCI, so Helm 3.8.0+ is recommended for OCI support. To install a chart from this repository, use the following command:

```bash
helm install <chart-name> oci://ghcr.io/espresso-lab/helm-charts --version <chart-version>
```

To view the available values for a chart, you can use `show values`:

```bash
helm show values oci://ghcr.io/espresso-lab/helm-charts/<chart-name> --version <chart-version>
```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Thank you for using the **espresso-lab** Helm charts! Happy deploying! ☕️🚀
