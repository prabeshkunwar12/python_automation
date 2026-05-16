#!../../myenv/bin/python3

import os 
import sys

filename = sys.argv[1]
if os.path.isfile(filename):
    print(f"{filename} already exists!")
    sys.exit(1)
else:
    with open(filename, 'w') as f:
        f.write("This is a new file.")
    print(f"{filename} has been created!")