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

#standard git cmds
git status 
git add -A 
git commit -m "Update Script.ps1" 
git push -u origin main

#using a lot
git log --oneline --graph --decorate --all