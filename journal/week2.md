# Week 2 — Distributed Tracing



## HoneyComb

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
```

- Getting connect to honeycomb and send datd. 

<img width="1680" alt="Capture d’écran 2023-03-02 à 00 22 51" src="https://user-images.githubusercontent.com/11331502/222890411-c8b642f8-0c8b-4c78-9159-d34e5ac7ef0c.png">


- Cearting and sending a span : 

I can now see the new span ```do-roll ``` in the Honeycomb : 
<img width="1680" alt="Capture d’écran 2023-03-02 à 00 41 22" src="https://user-images.githubusercontent.com/11331502/222890433-77c02d78-c693-459f-b598-3c91a832d597.png">

<img width="1680" alt="Capture d’écran 2023-03-04 à 10 36 29" src="https://user-images.githubusercontent.com/11331502/222891212-cd7dd541-0c68-403a-a936-e84a1f41d884.png">


- Adding attributes to the Span 

```sh
 with tracer.start_as_current_span("do_roll") as rollspan:
    span = trace.get_current_span()
    now = datetime.now(timezone.utc).astimezone()
    span.set_attribute("app.now", now.isoformat())
```

<img width="1680" alt="Capture d’écran 2023-03-02 à 00 52 48" src="https://user-images.githubusercontent.com/11331502/222891305-3f12ac86-b511-48df-aa64-0532dd1c3883.png">


- Honeycomb Query : 

<img width="1680" alt="Capture d’écran 2023-03-04 à 10 43 13" src="https://user-images.githubusercontent.com/11331502/222891858-3b0c0dea-fe0c-4241-92d7-6b8978270014.png">

## X-RAY : 

![Capture d’écran 2023-03-04 à 10 50 41](https://user-images.githubusercontent.com/11331502/222897023-cd2ae58c-5d45-4e27-b12b-edfa28b2f266.png)


1. Flask Part  : 

* Adding X-RAY SDK 
```sh 
aws-xray-sdk
```

* Install requirment  
```sh 
pip install -r requirements.txt
```

* Add code to app.py 
```sh 
from aws_xray_sdk.core import xray_recorder
from aws_xray_sdk.ext.flask.middleware import XRayMiddleware

xray_url = os.getenv("AWS_XRAY_URL")
xray_recorder.configure(service='Cruddur', dynamic_naming=xray_url)
XRayMiddleware(app, xray_recorder)
```
* Add Xray configuration as json file : 

```json 
{
  "SamplingRule": {
      "RuleName": "Cruddur",
      "ResourceARN": "*",
      "Priority": 9000,
      "FixedRate": 0.1,
      "ReservoirSize": 5,
      "ServiceName": "Cruddur",
      "ServiceType": "*",
      "Host": "*",
      "HTTPMethod": "*",
      "URLPath": "*",
      "Version": 1
  }
}
```

* Create Xray group using CLI 
```sh 
FLASK_ADDRESS="https://4567-${GITPOD_WORKSPACE_ID}.${GITPOD_WORKSPACE_CLUSTER_HOST}"
aws xray create-group \
   --group-name "Cruddur" \
   --filter-expression "service(\"$FLASK_ADDRESS\") {fault OR error}"
```
<img width="1680" alt="Capture d’écran 2023-03-04 à 11 24 49" src="https://user-images.githubusercontent.com/11331502/222894536-46920290-0181-4b6c-8fdb-90ef68263865.png">


* Sendig data to the X-RAY daemon : 
<img width="1680" alt="Capture d’écran 2023-03-04 à 11 41 04" src="https://user-images.githubusercontent.com/11331502/222895482-d27e734d-6172-4ad1-b641-eb64053e9c9e.png">


* Getting traes on X-RAY : 
![Capture d’écran 2023-03-04 à 11 42 48](https://user-images.githubusercontent.com/11331502/222895560-dac7cf28-a021-40d0-b3d3-188d5ac691bb.png)


## CloudWatch Logs 
* Add to the requirements.txt

```sh
## watchtower --> requirements

pip install -r requirements.txt

```

* Add code to app.py


```sh 
import watchtower
import logging
from time import strftime
```

* Configuring logger  

```sh 
# Configuring Logger to Use CloudWatch
LOGGER = logging.getLogger(__name__)
LOGGER.setLevel(logging.DEBUG)
console_handler = logging.StreamHandler()
cw_handler = watchtower.CloudWatchLogHandler(log_group='cruddur')
LOGGER.addHandler(console_handler)
LOGGER.addHandler(cw_handler)
LOGGER.info("some message")




@app.after_request
def after_request(response):
    timestamp = strftime('[%Y-%b-%d %H:%M]')
    LOGGER.error('%s %s %s %s %s %s', timestamp, request.remote_addr, request.method, request.scheme, request.full_path, response.status)
    return response
    
    
    
```

* Log API endpoint

```sh 
LOGGER.info('Hello Cloudwatch! from  /api/activities/home')
```

<img width="1680" alt="Capture d’écran 2023-03-04 à 12 08 41" src="https://user-images.githubusercontent.com/11331502/222896628-0bc4db91-6176-4eab-b0c2-cbdd9d7d5a95.png">





## Rollbar 



## Homowrok chalanges : 


