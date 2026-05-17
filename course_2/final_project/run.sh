line="------------------------------------------------"
echo "removing old files"
rm error_message.csv user_statistics.csv
echo $line
echo "running the script"
./ticky_check.py
echo $line
echo "contents of the error_message.csv file"
cat error_message.csv
echo 
echo $line
echo "contents of the user_statistics.csv file"
cat user_statistics.csv 
echo
