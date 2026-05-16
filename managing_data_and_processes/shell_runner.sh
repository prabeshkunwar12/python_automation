echo """
Firstly make the parameters.py file executable by running the following command in the terminal:
    chmod +x parameters.py
"""
echo "Running parameters.py with no arguments:"
./parameters.py 
echo "Running parameters.py with one argument:"
./parameters.py 12345
echo "Running parameters.py with two arguments:"
./parameters.py 12345 67890
echo "Running parameters.py with multiple arguments:"
./parameters.py a b 1 2 h 2

echo "\nExit status"
echo "counting the lines, words and characters in parameters.py"
wc parameters.py
echo "exit status of last command: $?"
echo "Trying to run a non-existent file:"
./notPresent.py
echo "exit status of last command: $?"

echo "\nDefining our own exit status"
echo "creating a file named randomfile:"
./create_file.py randomfile
echo "exit status of last command: $?"
echo "reading the file we just created:"
cat randomfile
echo "creating a file that already exists:"
./create_file.py randomfile
echo "exit status of last command: $?"
echo "removing the file we created:"
rm randomfile

