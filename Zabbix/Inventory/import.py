#!/usr/bin/python3
import json
import sys
import csv
from pprint import pprint

arquivo = csv.read(open('host.csv'),delimiter=';')

#HOST='VIRTUAL-100.GRUPO.QUALICORP'
IP='10.220.21.24'



json_data = {
            'VDIs': {
                'hosts': [HOST],
                'vars': {
                    'ansible_ssh_user': 'projectuser',
                }
            },
            '_meta': {
                'hostvars': {
                    HOST: {
                        'ip_address': IP
                                            }
                }
            }
        }
encoded_data = json.dumps(json_data)
print (encoded_data)