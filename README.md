# Container for the Rancher Kubernetes Engine

## Description

This is just a very simple container wrapper around a command line tool. It is to avoid having to fetch a binary with, for example, `wget` every time during a CI/CD pipeline that natively uses containers for each job. This speeds up the process slightly and it is more efficient to "solve" this problem once in a central location.

At the time of checking we were unable to find an official container image maintained by the authors of the original project and for security and auditing purposes we wanted to use an image that was generated by an automated public build on the official Docker Hub. If an official image would become available we would suggest using that instead as it most likely would be better supported on the long term. In that case it would be much appreciated if you would take the time to file an issue in this project so that we can update the readme accordingly.

## Examples

```bash
docker run --rm -ti perrit/rancher-rke rke --help
docker run --rm -ti perrit/rancher-rke rke --version
```

## Links

* https://github.com/rancher/rke
* https://github.com/perrit/rancher-rke-container
* https://gitlab.com/perrit/rancher-rke-container
* https://hub.docker.com/r/perrit/rancher-rke/
