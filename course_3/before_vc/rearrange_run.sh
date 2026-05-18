line="--------------------------------"

echo "making the files executable"
chmod +x rearrange2.py rearrange.py
echo $line
echo "rearrange.py"
cat rearrange.py
echo
echo $line
echo "rearrange2.py"
cat rearrange2.py
echo
echo $line
echo "diff rearrange.py rearrange2.py"
diff rearrange.py rearrange2.py
echo $line
echo "diff -u rearrange.py rearrange2.py"
diff -u rearrange.py rearrange2.py
echo $line
echo "diff -ur rearrange.py rearrange2.py"
diff -ur rearrange.py rearrange2.py
echo $line
echo "wdiff rearrange.py rearrange2.py"
wdiff rearrange.py rearrange2.py