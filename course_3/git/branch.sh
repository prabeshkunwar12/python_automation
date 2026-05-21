line="--------------------------------------------------------------"
echo "Showing how the git branching works"
echo $line
echo "First we create a new branch called 'feature-branch' and switch to it"
git checkout -b feature-branch
echo $line
echo "Now we are on the 'feature-branch' branch. Let's make some changes and commit them."
echo "Creating a new file called 'feature.txt' and adding some content to it"
echo "This is a new feature" > feature.txt
git add feature.txt
git commit -m "Add feature.txt with new feature"
echo $line
echo "Now we switch back to the 'main' branch"
git checkout main
echo $line
echo "We can see that the 'feature.txt' file is not present in the 'main' branch"
ls
echo $line
echo "Now we merge the 'feature-branch' into 'main'"
git merge feature-branch
echo $line
echo "Now the 'feature.txt' file is present in the 'main' branch"
ls
echo $line
echo "This is how git branching works. You can create separate branches for different features or bug"
echo $line
echo "Now let\'s clean up by deleting the \'feature-branch\' and then reverting back to the previous commit"
git branch -d feature-branch
git checkout main
git reset --hard HEAD~1
echo $line
echo "The 'feature.txt' file has been removed from the 'main' branch after reverting back to the previous commit"
ls
echo $line
echo "This concludes the demonstration of git branching. You can create branches to work on different features"