<h1 align=center>Dockette / Redoc</h1>

<p align=center>
   🎁 OpenAPI browser called Redoc with simple UI.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
  <a href="https://github.com/dockette/redoc/actions"><img src="https://github.com/dockette/redoc/actions/workflows/docker.yml/badge.svg"></a>
  <a href="https://hub.docker.com/r/dockette/redoc/"><img src="https://badgen.net/docker/pulls/dockette/redoc"></a>
  <a href="https://github.com/sponsors/f3l1x"><img src="https://badgen.net/badge/sponsor/donations/F96854"></a>
  <a href="https://github.com/orgs/dockette/discussions"><img src="https://badgen.net/badge/support/discussions/blue"></a>
</p>

-----

OpenAPI browser called Redoc with simple UI.

![](https://github.com/dockette/redoc/blob/master/.docs/redoc.png "Redoc")

## Usage

```sh
docker run -it --rm -p 8000:8000 dockette/redoc:latest
```

## Versions

| Version | Release |
|---------|---------|
| `dockette/redoc:YYYY.MM.DD` | release `YYYY.MM.DD` |
| `dockette/redoc:latest` | latest build of `master` |

Releases are listed on [GitHub](https://github.com/dockette/redoc/releases).

## Development

```sh
make build          # build the image
make run            # run Redoc on port 8000
make version        # print VERSION
make release        # set today's date in VERSION
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to
[support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
