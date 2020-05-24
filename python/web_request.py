#!/usr/bin/python3
#######################################
#			punisherbash  #
#######################################

import requests

site = requests.get('http://businesscorp.com.br/')
status = site.status_code
if( status == 200):
    print('Page Ok')
else:
    print('Page not Found')
