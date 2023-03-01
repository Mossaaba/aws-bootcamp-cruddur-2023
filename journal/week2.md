# Week 2 — Distributed Tracing


### 1. Create bootcamp-dev environnemnts 
Capture d’écran 2023-03-01 à 23.10.59.png

### 2. Adding environment varaiable to docker-compose 

```sh
   OTEL_SERVICE_NAME : "backend-flask"
      OTEL_EXPORTER_OTLP_ENDPOINT: "https://api.honeycomb.io"
      OTEL_EXPORTER_OTLP_HEADERS: "x-honeycomb-team=${HONEYCOMB_API_KEY}"
```
- Searching to the standard open source : ``Open Telemetry'' : https://opentelemetry.io/docs/
* Part of cloud natives.
* Standard tool of observabbility
>> In our case we are using honeycomb as OTEL collector 

- Add requirements 
- Add instrumentation lines to app.py

>> Best practice for docker is use dockerfile for each environnement 

- Adding open port as default setting for gitpod.

- Getting connect to honeycomb and send datd. 

- Adding more span 

-- adding 