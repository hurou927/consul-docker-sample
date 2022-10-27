# Consul Sample

```sh
$ make run
$ make open
```

![webui](doc/screenshot_consul_ui.png?raw=true)


Prometheus Sample Query
```
avg by (instance) ( go_memstats_gc_cpu_fraction{})
```

![prometheus](doc/screenshot_prometheus_sample.png?raw=true)
