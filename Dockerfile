FROM apache/iotdb:0.13.2-node

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt-get update && apt-get install --no-install-recommends --yes python3-pip 
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["/usr/bin/env"]
CMD [ "python3", "pyxtermjs/app.py", "--host", "0.0.0.0" ]
