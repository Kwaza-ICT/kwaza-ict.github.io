# How to send message to teams using Python

```python
from urllib.parse import urlparse
import json
import http.client
import os


def send_message(instance_id, message_type):
    
    message_body = json.dumps({"body": "Broker " + instance_id + " is getting " + message_type})

    headers = {"Content-Type": "application/json"}

    url = urlparse("<teams-slack-channel-url>")

    conn = http.client.HTTPSConnection(url.netloc)

    conn.request("POST", url.path, message_body, headers)

    response = conn.getresponse()

    # Check for successful response (status code 201)
    if response.status == 201:
        print(f"Message sent successfully to Teams channel!")
    else:
        print(f"An error occurred while sending the message: {response.status} - {response.reason}")

```