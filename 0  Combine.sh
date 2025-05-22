# --- Git Basics & Setup ---

# Install Git (example for Ubuntu)
sudo apt-get install git

# Configure user
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --list

# Initialize a new repository
git init

# Add files to staging
git add <file>         # Add specific file
git add .              # Add all files

# Commit staged files
git commit -m "Initial commit"

# Check status
git status

# Clone an existing repository
git clone <repo_url>

# --- Branching & Collaboration ---

# List branches
git branch

# Create and switch branches
git branch <branch_name>
git checkout <branch_name>
# Or (Git 2.23+)
git switch <branch_name>
git checkout -b <branch_name>     # Create and switch
git switch -c <branch_name>       # Create and switch (Git 2.23+)

# Compare branches
git diff <branch1>..<branch2>

# Merge feature branch into main
git checkout main
git merge <feature_branch>

# Resolve merge conflicts:
# (After editing conflicted files)
git add <conflicted_file>
git commit

# Delete branches
git branch -d <branch_name>       # Delete local
git branch -D <branch_name>       # Force delete local
git push origin --delete <branch_name>   # Delete remote

# --- Working with Remote Repositories ---

# Fork on GitHub (via web), then:
git clone <forked_repo_url>

# Add and remove remotes
git remote add upstream <upstream_repo_url>
git remote remove upstream
git remote -v

# Push to specific remote
git push origin <branch_name>
git push upstream <branch_name>

# Pull latest changes
git pull origin <branch_name>

# --- Pull Requests & Collaboration ---

# (Use GitHub/GitLab UI to create PRs)

# --- GitHub Pages Deployment ---

git checkout --orphan gh-pages
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages

# --- .gitignore ---

# Create/edit .gitignore file (example entries)
echo "node_modules/" >> .gitignore
echo "dist/" >> .gitignore
echo ".env" >> .gitignore
echo "__pycache__/" >> .gitignore
echo ".DS_Store" >> .gitignore

# --- Maintaining Clean Branches & Commits ---

git branch --merged
git branch -d <merged_branch>

# --- Version Control Best Practices ---

# Write a meaningful commit message
git commit -m "Describe what changed and why"

# Rewrite commit history (last 3 commits)
git rebase -i HEAD~3

# Cherry-pick a commit
git cherry-pick <commit_hash>

# --- Advanced Git Operations ---

# Stash changes
git stash
git stash list
git stash apply
git stash pop

# Reset, restore, revert
git restore --staged <file>         # Unstage file
git restore <file>                  # Discard changes in working dir
git reset --soft HEAD~1             # Move HEAD, keep changes staged
git reset --mixed HEAD~1            # Move HEAD, unstage changes
git reset --hard HEAD~1             # Move HEAD, discard changes
git revert <commit_hash>            # Revert a commit (safe for shared history)

# Rebase vs Merge
git merge <branch>
git rebase <branch>
