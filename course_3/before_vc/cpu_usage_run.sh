line="==============================================================="
echo "initialize cpu_usage.py"
cp cpu_usage.py cpu_usage_backup.py

echo $line
echo "cpu_usage.py"
cat cpu_usage.py
echo
echo $line

echo "creating the patch"
echo "diff -u cpu_usage.py cpu_usage_fixed.py > cpu_usage.diff"
diff -u cpu_usage.py cpu_usage_fixed.py > cpu_usage.diff
echo $line

echo "cpu_usage.diff"
cat cpu_usage.diff
echo
echo $line

echo "apply the patch"
patch cpu_usage.py < cpu_usage.diff
echo $line

echo "cpu_usage.py after patch"
cat cpu_usage.py
echo
echo $line

echo "diff -ur cpu_usage.py cpu_usage_backup.py"
diff -ur cpu_usage.py cpu_usage_backup.py
echo $line

echo "clean up"
rm cpu_usage.py cpu_usage.diff
mv cpu_usage_backup.py cpu_usage.py