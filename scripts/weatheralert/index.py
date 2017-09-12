import urllib.request
from bs4 import BeautifulSoup
import re
from dateutil import parser
from datetime import timedelta
import sys

page = urllib.request.urlopen('http://climatex.dost.gov.ph/predict.html')
html = page.read()

soup = BeautifulSoup(html, 'html.parser')
html_table = soup.findAll('table')


table_data = [[cell.text for cell in row("td")]
                 for row in html_table[1]("tr")]

dt = parser.parse(table_data[0][1])

for sublist in table_data:
    if sublist[0] == sys.argv[1]:
        city = sublist

# create list of tuples, include index as rel time index
forecast = [(i, int(re.findall("\d+", x)[0])) for i, x in enumerate([city[1], city[2], city[3], city[4]])]

# only include forecasts worth alerting
forecast = [(i,v) for (i, v) in forecast if v >= 30]

# get the time of the next event
next_event = (dt+timedelta(hours=forecast[0][0])).strftime('%-I:%M%p')if forecast else None

# update time indexes relative to next event
forecast_rel_next_event = [(i-forecast[0][0],v) for (i, v) in forecast]

# create displayable strings, don't add time index to first element
display = ['+' + str(i) + ' ' + str(v) + '%' if i > 0 else str(v) + '%' for x, (i, v) in enumerate(forecast_rel_next_event)]

if sys.argv[2]:
    file = open(sys.argv[2],'w')
    file.write(next_event + ' ' + ', '.join(display))
    file.close()
else:
    print(next_event, ', '.join(display))


