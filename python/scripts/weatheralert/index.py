import requests
import json
import sys

forecast_raw = requests.get(
    'http://noah.up.edu.ph/api/four_hour_forecast')

if forecast_raw.status_code == 200:

    forecast = json.loads(forecast_raw.text)

    city = next(filter(lambda x: x['location'] == sys.argv[1], forecast))

    only_high_chance = list(filter(lambda x: float(
        x['percent_chance_of_rain']) >= int(sys.argv[2]), city['data']))

    output = ''
    for x in only_high_chance:
        output += str(int(float(x['percent_chance_of_rain']))
                      ) + '% ' + x['time'] + ' '

    if len(sys.argv) >= 4:
        file = open(sys.argv[3], 'w')
        file.write(output)
        file.close()
    else:
        print(output)
else:
    print forecast_raw.status_code
