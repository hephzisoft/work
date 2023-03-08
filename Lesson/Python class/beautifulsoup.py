import requests
from bs4 import BeautifulSoup

URL = "http://www.apple.com"
r = requests.get(URL)

soup = BeautifulSoup(r.content, 'html5lib') # If this line causes an error, run 'pip install html5lib' or install html5lib
print(soup.prettify())

name = "Hephzibah"
print(len(name))
