#!/usr/bin/env bash

fromTs=$(date --date="TZ=\"Asia/Bangkok\" $1" +%s)
toTs=$(date --date="TZ=\"Asia/Bangkok\" $2" +%s)

curl "https://www.upwork.com/api/v3/wt/workdiaries?contractId=30092956&fromTs=${fromTs}&toTs=${toTs}" \
  -X 'PUT' \
  -H 'authority: www.upwork.com' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'authorization: AUTH_TOKEN' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H $'cookie: PUT_YOUR_COOKIE_HERE' \
  -H 'newrelic: eyJ2IjpbMCwxXSwiZCI6eyJ0eSI6IkJyb3dzZXIiLCJhYyI6IjE0NjE4MiIsImFwIjoiNTY1NDM0OTIwIiwiaWQiOiJhZjdlZGI5YjIyMDBkNjE2IiwidHIiOiJkZjVmODllYTQ2OTZmNjBlYjgwZjA4NzRlYzNmN2Y4MCIsInRpIjoxNjUwMjc5NjkxMjc1LCJ0ayI6IjUzNjcxIn19' \
  -H 'origin: https://www.upwork.com' \
  -H 'referer: https://www.upwork.com/ab/f/contracts/30092956' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'traceparent: 00-df5f89ea4696f60eb80f0874ec3f7f80-af7edb9b2200d616-01' \
  -H 'tracestate: 53671@nr=0-1-146182-565434920-af7edb9b2200d616----1650279691275' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36' \
  -H 'x-newrelic-id: VQIBUF5RGwIFXVFTDgkGUA==' \
  -H 'x-odesk-csrf-token: 5b98ab624ec7c8452ea7c973db17722f' \
  -H 'x-odesk-user-agent: oDesk LM' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw "{\"memo\":\"$3\"}" \
  --compressed
