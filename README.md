# remote-sensing

A remote sensing stack with Prometheus, Grafana, some sensors, and Tailscale

My [initial writeup](https://vielmetti.typepad.com/logbook/2020/05/logbook-natsio-and-tailscale.html)
is a good start - the goal of this repo is to share code fragments that come from
answering the question "how hot is it in the attic", and "should I open or close
the windows".

Goals for systems to monitor:

* Attic temperature and humidity
* System temperatures across the whole fleet
* Power grid status (DTE outages)
* Ping times and other network quality estimators

This is aspirational in part, but some parts are working.
