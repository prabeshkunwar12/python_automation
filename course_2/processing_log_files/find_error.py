#!../../myenv/bin/python3
import sys
import re
import os

def error_search(log_file):
    error = input("What is the error? ")
    returned_errors = []

    error_patterns = ["error"]
    split_error = error.split(' ')
    for i in range(len(split_error)):
        error_patterns.append(r"{}".format(split_error[i].lower()))

    print(f"error patterns: {error_patterns}")

    with open(log_file, 'r', encoding='utf-8') as file:
        for log in  file.readlines():
            if all(re.search(error_pattern, log.lower()) for error_pattern in error_patterns):
                returned_errors.append(log)
        file.close()
    return returned_errors

def file_output(returned_errors):
    with open('errors_found.log', 'w') as file:
        for error in returned_errors:
            file.write(error)
        file.close()

if __name__ == "__main__":
  log_file = sys.argv[1]
  returned_errors = error_search(log_file)
  file_output(returned_errors)
  sys.exit(0)