chmod +x capatilize.py
echo "contents of the haiku.txt file"
cat haiku.txt
echo
echo

echo "running the script with a pipe"
cat haiku.txt | ./capitalize.py
echo

echo "running the script with input redirection"
./capitalize.py < haiku.txt
echo