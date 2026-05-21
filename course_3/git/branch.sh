line="--------------------------------------------------------------"
double_line="=============================================================="
echo "Showing how the git branching works"
echo $line

echo "First we create a new branch called 'feature-branch' and switch to it"
echo $line
echo "git checkout -b feature-branch"
git checkout -b feature-branch
echo $double_line


echo "Now we are on the 'feature-branch' branch. Let's make some changes and commit them."
echo "Creating a new file called 'feature.txt' and adding some content to it"
echo $line
echo "echo 'This is a new feature' > feature.txt"
echo "git add feature.txt"
echo "git commit -m 'Add feature.txt with new feature'"

echo "This is a new feature" > feature.txt
git add feature.txt
git commit -m "Add feature.txt with new feature"
echo $double_line


echo "Now we switch back to the 'main' branch"
echo $line
echo "git checkout main"
git checkout main           
echo $double_line

echo "We can see that the 'feature.txt' file is not present in the 'main' branch"
echo $line
echo "ls"
ls
echo $double_line


echo "Now we merge the 'feature-branch' into 'main'"
echo $line
echo "git merge feature-branch"
git merge feature-branch
echo $double_line


echo "Now the 'feature.txt' file is present in the 'main' branch"
echo $line
echo "ls"
ls
echo $double_line


echo "This is how git branching works. You can create separate branches for different features or bug"
echo $double_line


echo "Now let's clean up by deleting the 'feature-branch' and then reverting back to the previous commit"
echo $line
echo "git branch -d feature-branch"
echo "git checkout main"
echo "git reset --hard HEAD~1"

git branch -d feature-branch
git checkout main
git reset --hard HEAD~1
echo $double_line


echo "The 'feature.txt' file has been removed from the 'main' branch after reverting back to the previous commit"
echo $line
echo "ls"

ls
echo $double_line


echo "This concludes the demonstration of git branching. You can create branches to work on different features"