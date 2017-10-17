# 14.5833,120.9667
# https://api.darksky.net/forecast/0a6a8952082439b11cdbcd59bffcdb0a/

import requests
import json
import sys

API_KEY = '0a6a8952082439b11cdbcd59bffcdb0a'
LONG_LAT = sys.argv[1]

forecast_raw = requests.get(
    'https://api.darksky.net/forecast/' + API_KEY + '/' + LONG_LAT + '?exclude=currently')

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
        if 'Sunny' in hda['summary']:
            report += '#[bg=colour251] '
            continue
        if 'Partly Cloudy' in hda['summary']:
            report += '#[bg=colour246] '
            continue
        if 'Mostly Cloudy' in hda['summary']:
            report += '#[bg=colour242] '  # 242
            continue
        if 'Overcast' in hda['summary']:
            report += '#[bg=colour237] '  # 237
            continue
        if 'Drizzle' in hda['summary']:
            report += '#[bg=colour32] '
            continue
        if 'Light Rain' in hda['summary']:
            report += '#[bg=colour25] '
            continue
        if 'Rain' in hda['summary']:
            report += '#[bg=colour20] '
            continue
        if 'Heavy Rain' in hda['summary']:
            report += '#[bg=colour18] '
            continue
        # Unmatched summary
        report += '#[bg=colour196] '
    print(report)
else:
    print(forecast_raw.status_code)
