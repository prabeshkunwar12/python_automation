line="==============================================================="
echo "initialize disk_usage.py with the original code"
cat disk_usage.py
echo
cp disk_usage.py disk_usage_backup.py 
echo $line

echo "run disk_usage.py with the original code"
chmod +x disk_usage.py
./disk_usage.py
echo $line

echo "diff disk_usage.py and disk_usage_fixed.py"
diff -u disk_usage.py disk_usage_fixed.py > disk_usage.diff
cat disk_usage.diff
echo 
echo $line

echo "apply patch to disk_usage.py"
patch disk_usage.py < disk_usage.diff
echo $line

echo "disk_usage.py after applying patch"
cat disk_usage.py
echo
echo $line

echo "diff -ur disk_usage.py and disk_usage_backup.py"
diff -ur disk_usage.py disk_usage_backup.py
echo $line

echo "run disk_usage.py after applying patch"
./disk_usage.py
echo $line

echo "cleanup: remove backup and diff files"
rm disk_usage.py disk_usage.diff
mv disk_usage_backup.py disk_usage.py
echo "cleanup done"