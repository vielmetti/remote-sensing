---
title: nats2prom
---
Define a set of NATS channels and how they map
to Prometheus metrics, then expose a metrics
endpoint to be scraped.

This ended up not being necessary for the first
draft of the project, but if I were to try this
again I'd start from [mqtt2prom](https://github.com/SweBarre/mqtt2prom)
by Jonas Forsberg (SweBarre).
