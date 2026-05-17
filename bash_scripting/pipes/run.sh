chmod +x capatilize.py
echo "contents of the haiku.txt file"
cat haiku.txt
echo
echo

echo "running the script with a pipe"
cat haiku.txt | ./capatilize.py
echo

echo "running the script with input redirection"
./capatilize.py < haiku.txt
echo