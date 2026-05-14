#!../myenv/bin/python3
import sys
import re

def show_user(line):
  pattern = r"USER \((\w+)\)$"
  result = re.search(pattern, line)
  return result[1]

def show_time_of_pid(line):
  pattern = r"^(\w+\s+\d+\s+\d+:\d+:\d+).*\[(\d+)\]"
  result = re.search(pattern, line)
  return result[1]+" pid:"+result[2]

logfile = sys.argv[1]


with open(logfile) as f:
  for line in f:
    if "CRON" not in line:
      continue
    print(f"User: {show_user(line)} Time: {show_time_of_pid(line)}")

usernames = {}
with open(logfile) as f:
  for line in f:
    if "CRON" not in line:
      continue
    pattern = r"USER \((\w+)\)$"
    result = re.search(pattern, line)

    if result is None:
      continue
    name = result[1]
    usernames[name] = usernames.get(name, 0) + 1

print(usernames)