echo "printing the content of stdout_example.py:"
cat stdout_example.py
echo

chmod +x stdout_example.py
echo

echo "running the script:"
./stdout_example.py > new_file.txt
echo

echo "printing the content of new_file.txt:"
cat new_file.txt
echo

echo "using >> to append to the file:"
./stdout_example.py >> new_file.txt
echo

echo "printing the content of new_file.txt after appending:"
cat new_file.txt
echo

echo "printing the content of streams_err.py:"
cat streams_err.py
echo

chmod +x streams_err.py
echo

echo "running the script and taking stdin from new_file.txt and redirecting stderr to error_log.txt:"
./streams_err.py < new_file.txt 2> error_log.txt
./streams_err.py < new_file.txt > stdout.txt
echo

echo "printing the content of error_log.txt:"
cat error_log.txt
echo

echo "printing the content of stdout.txt:"
cat stdout.txt
echo

