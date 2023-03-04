# Week 2 — Distributed Tracing


### 1. Create bootcamp-dev environnemnts 
<img width="1680" alt="Capture d’écran 2023-03-01 à 23 10 59" src="https://user-images.githubusercontent.com/11331502/222889979-b97f7f62-0ced-4416-9b51-81d330e148c6.png">

### 2. Adding environment varaiable to docker-compose 

Edit docker-compose.yml to add OpenTelemetry variables for the backend-flask service

```sh
   OTEL_SERVICE_NAME : "backend-flask"
      OTEL_EXPORTER_OTLP_ENDPOINT: "https://api.honeycomb.io"
      OTEL_EXPORTER_OTLP_HEADERS: "x-honeycomb-team=${HONEYCOMB_API_KEY}"
```

- After running up the docker compose, we get the data set : 

<img width="1680" alt="Capture d’écran 2023-03-02 à 00 22 08" src="https://user-images.githubusercontent.com/11331502/222890312-4fd759aa-5172-4704-ae17-33b028b929a1.png">


### 3. Searching to the standard open source : ``Open Telemetry'' : https://opentelemetry.io/docs/
* Part of cloud natives.
* Standard tool of observabbility
>> In our case we are using honeycomb as OTEL collector 

### 4.Add requirements 
- Install the Python modules for OpenTelemetry

```sh
pip install opentelemetry-api \
    opentelemetry-sdk \
    opentelemetry-exporter-otlp-proto-http \
    opentelemetry-instrumentation-flask \
    opentelemetry-instrumentation-requests
```
- Add instrumentation lines to app.py

```sh
from opentelemetry.sdk.trace.export import ConsoleSpanExporter, SimpleSpanProcessor
simple_processor = SimpleSpanProcessor(ConsoleSpanExporter())
provider.add_span_processor(simple_processor)
```sh

- Getting connect to honeycomb and send datd. 

<img width="1680" alt="Capture d’écran 2023-03-02 à 00 22 51" src="https://user-images.githubusercontent.com/11331502/222890411-c8b642f8-0c8b-4c78-9159-d34e5ac7ef0c.png">


- Cearting and sending a span : 

I can now see the new span ```do-roll ``` in the Honeycomb : 
<img width="1680" alt="Capture d’écran 2023-03-02 à 00 41 22" src="https://user-images.githubusercontent.com/11331502/222890433-77c02d78-c693-459f-b598-3c91a832d597.png">


<img width="1680" alt="Capture d’écran 2023-03-04 à 10 27 16" src="https://user-images.githubusercontent.com/11331502/222890567-753b0d2f-ad9f-47fa-967a-15ee4bc4bddf.png">

- Adding more span 



-- adding 
