#!../myenv/bin/python3

import re

# ^ start of the string
# [^,] character class to match anything except comma
# [^,]+ one or more of the previous character class
# ^([^,]+) captures the first name (everything before the comma) in group 1
# ,\s* matches a comma followed by optional whitespace
# (.+) captures the last name (everything after the comma and optional whitespace) in group 2
# $ end of the string 
def rearrange_name(name):
    return re.sub(r'^([^,]+),\s*(.+)$', r'\2 \1', name)
