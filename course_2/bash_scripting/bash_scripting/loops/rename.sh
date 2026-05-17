removing the files with html extension
rm *.html
rm *.HTM

echo "Creating the files with HTM extension"
touch file1.HTM file2.HTM file3.HTM index.HTM

echo "The files before renaming"
ls *.HTM

echo "Renaming the files to have html extension"
for file in *.HTM; do
    name=$(basename "$file" .HTM)
    mv "$file" "${name}.html"
done

echo "The files after renaming"
ls *.html

echo "Cleaning up the files"
rm *.html


