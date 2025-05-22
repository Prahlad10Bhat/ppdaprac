# List all branches
git branch

# Create a new branch
git branch <branch_name>

# Switch to a branch
git checkout <branch_name>
# Or (since Git 2.23+)
git switch <branch_name>

# Create and switch in one command
git checkout -b <branch_name>
git switch -c <branch_name>

# Compare branches
git diff <branch1>..<branch2>
