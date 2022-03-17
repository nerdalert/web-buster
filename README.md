### web-buster

[![web-buster CI](https://github.com/nerdalert/web-buster/actions/workflows/docker-image.yml/badge.svg)](https://github.com/nerdalert/web-buster/actions/workflows/docker-image.yml)

- Bustin webs since 2022
- Made for http stress-testing
- Originally forked from the stale project hey.go

### Quickstart 

```shell
docker run -it --rm quay.io/networkstatic/web-buster -z 5s -c 40 http://x.x.x.x

Summary:
  Total:	11.9253 secs
  Slowest:	2.1911 secs
  Fastest:	0.0899 secs
  Average:	0.8945 secs
  Requests/sec:	162527.5552
```
