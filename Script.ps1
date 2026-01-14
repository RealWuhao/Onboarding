##Test Script file
hostname

#check version
git --version

#Turn any folder into a repo
git status

# config
git config --global --list
git config --global user.name "Wuhao Chen"
git config --global user.email "wuhao.chen95@gmail.com"

#many other settings
git config --global init.defaultBranch main

#using a lot
git log --oneline --graph --decorate --all

#create a function
function gitgraph {
    git log --oneline --graph --decorate --all    
}

#compare difference
#git diff <commit1> .. <commit2>

#standard git cmds
git status 
git add -A 
git commit -m "Update Script.ps1" 
git push -u origin main
#create a file
code ./testfile.txt
#delete a file, local and staging
git rm testfile.txt
#remove all staged content, this is actually using --mixed by default
git reset
##reset to the last commit, will potentially lost work
git reset --hard

#restore version instaged from last commit 
git restore --staged testfile.txt