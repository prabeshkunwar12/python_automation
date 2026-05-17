#!../../myenv/bin/python3
import sys
import re
import operator



def find_error_info_user(line):
    user_extract_exp = r"ticky: (ERROR|INFO) ([\w ',.]*) (?:\[#[\d]+\] )?\(([\w.]+)\)"
    return re.search(user_extract_exp, line)

def extract_data():
    error_dict = {}
    user_dict = {}

    with open("syslog.log") as file:
        for line in file:
            match = find_error_info_user(line)
            error_or_info = match.group(1)
            message = match.group(2)
            username = match.group(3)

            if error_or_info == "ERROR":
                if message in error_dict:
                    error_dict[message] += 1
                else:
                    error_dict[message] = 1
            if username not in user_dict:
                user_dict[username] = {"INFO": 0, "ERROR": 0}
            user_dict[username][error_or_info] += 1
    error_dict = dict(sorted(error_dict.items(), key=operator.itemgetter(1), reverse=True))
    user_dict = dict(sorted(user_dict.items()))
    return error_dict, user_dict

def write_csv(dict, filename, fields):
    with open(filename, "w") as file:
        file.write(",".join(fields) + "\n")
        for key, value in dict.items():
            if len(fields) == 2:
                file.write(f"{key},{value}\n")
            else:
                file.write(f"{key},{value[fields[1]]},{value[fields[2]]}\n")

if __name__ == "__main__":
    error_dict, user_dict = extract_data()
    write_csv(error_dict, "error_message.csv", ["Error", "Count"])
    write_csv(user_dict, "user_statistics.csv", ["Username", "INFO", "ERROR"])

# if __name__ == "__main__":
#     info = find_error_info_user("Jan 31 01:33:12 ubuntu.local ticky: ERROR Tried to add information to closed ticket (mcintosh)")
#     print(info)
#     info = find_error_info_user("Jan 31 01:29:16 ubuntu.local ticky: INFO Commented on ticket [#6518] (rr.robinson)")
#     print(info)