# WORK IN PROGRESS

# HELM Charts by espresso lab

Welcome to the `helm-charts` repository by **espresso-lab**! This repository contains a collection of Helm charts for deploying various applications and services in Kubernetes, provided as OCI images.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Available Charts 🚀](#available-charts-🚀)
- [Usage](#usage)
- [License](#license)

## Introduction

Helm is a package manager for Kubernetes, enabling the management of Kubernetes applications through Helm charts. This repository hosts Helm charts maintained by **espresso-lab** for easy deployment and management of applications in Kubernetes clusters.

## Getting Started

To get started with using the Helm charts in this repository, you need to have Helm installed on your local machine. If you don't have Helm installed, please follow the [official Helm installation guide](https://helm.sh/docs/intro/install/).

## Available Charts 🚀

| Chart Name                         | Description                    |
|------------------------------------|--------------------------------|
| **ddns-route53**                   | A brief description TBD.       |
| **homebridge**                     | A brief description TBD.       |
| **kanidm**                         | A brief description TBD.       |
| **lldap**                          | A brief description TBD.       |
| **oidc-forward-auth-middleware**   | A brief description TBD.       |
| **simple-file-transfer**           | A brief description TBD.       |
| **simple-link-shortener**          | A brief description TBD.       |
| **vsftpd**                         | A brief description TBD.       |
| **webdav-s3-adapter**              | A brief description TBD.       |

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

This repository is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for more details.

---

Thank you for using the **espresso-lab** Helm charts! Happy deploying! ☕️🚀
