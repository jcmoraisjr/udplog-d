# udplog-d

Bare minimum image to pipe logs from an UDP port to stdout. Meant to be run as a sidecar container.

[![Docker Repository on Quay](https://quay.io/repository/jcmoraisjr/udplog-d/status "Docker Repository on Quay")](https://quay.io/repository/jcmoraisjr/udplog-d)

## Use cases

* Pipe logs from daemons that cannot log to stdout
* Separate stdout logs in distinct containers

## Usage

Running as a sidecar container on k8s. Default UDP port is `1514`:

```yaml
  ...
  template:
    spec:
      containers:
      - name: syslog
        image: quay.io/jcmoraisjr/udplog-d
```

Changing to UDP port `2514`:

```yaml
  ...
  template:
    spec:
      containers:
      - name: syslog
        image: quay.io/jcmoraisjr/udplog-d
        args: ["2514"]
```
