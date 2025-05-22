sudo apt-get install git

git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --list

git init

git add <file>       
git add .             

git commit -m "Initial commit"

git status

git clone <repo_url>

git branch

git branch <branch_name>
git checkout <branch_name>

git switch <branch_name>
git checkout -b <branch_name>    
git switch -c <branch_name>    

git diff <branch1>..<branch2>

git checkout main
git merge <feature_branch>

git add <conflicted_file>
git commit


git branch -d <branch_name>       # Delete local
git branch -D <branch_name>       # Force delete local
git push origin --delete <branch_name>   # Delete remote


git clone <forked_repo_url>

git remote add upstream <upstream_repo_url>
git remote remove upstream
git remote -v


git push origin <branch_name>
git push upstream <branch_name>


git pull origin <branch_name>



git checkout --orphan gh-pages
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages



echo "node_modules/" >> .gitignore
echo "dist/" >> .gitignore
echo ".env" >> .gitignore
echo "__pycache__/" >> .gitignore
echo ".DS_Store" >> .gitignore


git branch --merged
git branch -d <merged_branch>


git commit -m "Describe what changed and why"

# Rewrite commit history (last 3 commits)
git rebase -i HEAD~3

git cherry-pick <commit_hash>


git stash
git stash list
git stash apply
git stash pop

git restore --staged <file>         # Unstage file
git restore <file>                  # Discard changes in working dir
git reset --soft HEAD~1             # Move HEAD, keep changes staged
git reset --mixed HEAD~1            # Move HEAD, unstage changes
git reset --hard HEAD~1             # Move HEAD, discard changes
git revert <commit_hash>            # Revert a commit (safe for shared history)


git merge <branch>
git rebase <branch>
