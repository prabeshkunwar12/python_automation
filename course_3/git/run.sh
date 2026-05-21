line="--------------------------------------------------------------"

echo "add new_file.py"
touch new_file.py
echo "print('This is a new file')" > new_file.py

echo "git log after adding new_file.py"
git log --oneline
echo $line

echo "git add new_file.py"
git add new_file.py
echo $line

echo "git log after adding new_file.py to staging area"
git log --oneline
echo $line

echo "git commit -m 'Add new_file.py'"
git commit -m "Add new_file.py"
echo $line

echo "git log after committing new_file.py"
git log --oneline 
echo $line

echo "cleanup: remove new_file.py and move to the previous commit"
rm new_file.py
git reset --hard HEAD~1
echo "cleanup done"
echo $line

echo "git log after cleanup"
git log --oneline
echo $line



