# 14.5833,120.9667
# https://api.darksky.net/forecast/0a6a8952082439b11cdbcd59bffcdb0a/

import requests
import json
import sys
import time

API_KEY = '0a6a8952082439b11cdbcd59bffcdb0a'

forecast_raw = requests.get(
    'https://api.darksky.net/forecast/' + API_KEY + '/14.5833,120.9667?exclude=currently')

report = ''
show = 12

if forecast_raw.status_code == 200:
    forecast = json.loads(forecast_raw.text)
    hourly_data = forecast['hourly']['data']
    count = 0
    for hda in hourly_data[:show - 1]:
        if count % 4 == 0:
            report += '#[bg=colour235] '
        count += 1
        evt_time = time.strftime(
            '%Y-%m-%d %H:%M:%S', time.localtime(hda['time']))
        # if sys.argv[1]:
        #    print(evt_time)
        if hda['summary'] == 'Partly Cloudy':
            report += '#[bg=colour245] '
        if hda['summary'] == 'Overcast':
            report += '#[bg=colour239] '
        if hda['summary'] == 'Drizzle':
            report += '#[bg=colour33] '
        if hda['summary'] == 'Light Rain':
            report += '#[bg=colour31] '
        if hda['summary'] == 'Rain':
            report += '#[bg=colour25] '
        if hda['summary'] == 'Heavy Rain':
            report += '#[bg=colour19] '
    print(report)
else:
    print(forecast_raw.status_code)
