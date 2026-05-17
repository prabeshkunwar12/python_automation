echo "listing last 10 lines of syslog"
tail -n 10 /var/log/system.log

echo "listing last 10 lines of syslog without date and time"
tail -n 10 /var/log/system.log | cut -d' ' -f5-
echo

echo "listing top 10 most common log messages"
cut -d' ' -f5- /var/log/system.log| sort | uniq -c | sort -rn | head -n 10

for log in /var/log/*log; do
    echo "Processing $log"
    cut -d' ' -f5- $log | sort | uniq -c | sort -rn | head -n 5
    echo
done