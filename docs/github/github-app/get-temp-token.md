# Script to get a temporary token

## Script
The script will generate a temporary token that can be used to authenticate with the GitHub API.
You can grab a py script [here](script/get-temp-token.py)
Script 

```python
import jwt
import time
import requests

pem="/path/key.pem" # Path to the private key of the GitHub App

with open(pem, 'r') as pem_file:
    signing_key = pem_file.read()

payload = {
    'iat': int(time.time()),
    'exp': int(time.time()) + 600,
    'iss': '12345' # GitHub App ID
}

encoded_jwt = jwt.encode(payload, signing_key, algorithm='RS256')

url = 'https://api.github.com/app/installations'
headers = {'Authorization': 'Bearer ' + encoded_jwt, 'Accept': 'application/vnd.github+json'}
r = requests.get(url, headers=headers)

installation_id = None

for resp in r.json():
  installation_id = resp['id']

url_post = 'https://api.github.com/app/installations/' + str(installation_id) + '/access_tokens'
r_post = requests.post(url_post, headers=headers)

token_response = r_post.json()

token_ready = token_response['token']

print(token_ready)

print(encoded_jwt)
```

## Before use

You need to have the following:

- A GitHub App with a private key
- The GitHub App ID
