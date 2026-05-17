#!../myenv/bin/python3
import shutil
import psutil

def check_disk_usage(disk):
    du = shutil.disk_usage(disk)
    free = du.free / du.total * 100
    print(f"Free disk space: {free:.2f}%")
    return free > 20

def check_cpu_usage():
    usage = psutil.cpu_percent(1)
    print(f"CPU usage: {usage:.2f}%")
    return usage < 75

if not check_disk_usage("/") or not check_cpu_usage():
    print("ERROR! Not enough disk space or CPU usage is too high")
else:    
    print("Everything ok!")