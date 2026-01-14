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

# 场景	推荐命令
# 还没 push，想回退 1 个 commit，代码保留	git reset --soft HEAD~1
# 还没 push，想回退 1 个 commit，代码变成未提交状态	git reset --mixed HEAD~1
# 还没 push，想彻底丢掉这个 commit	git reset --hard HEAD~1
# 已经 push，不想改历史（最安全）	git revert HEAD

# can create a tag at the current location
git tag v1.0.0
gitgraph
git tag --list

git show v1.0.0


# Step 1: Make a normal commit
git add C:\TEMP\GitRepo\Onboarding\Script.ps1
git status
git commit -m "feat: update onboarding script"

# Step 2: Create a version tag on that commit
# git tag v1.2.0


# (or annotated tag — recommended)

git tag -a v1.3.0 -m "Release v1.3.0"

# Step 3: Push commit + tag
git push
git push origin v1.3.0

#push all tags
git push --tags
# Now that commit is officially version v1.2.0.

#This is to test pull
git status

#view all branches , * is current
git branch --list
git branch -a

git branch branch1
gitgraph

git checkout branch1
#new way
git switch branch1
git branch --list

#new
git merge branch1
git branch -d branch1