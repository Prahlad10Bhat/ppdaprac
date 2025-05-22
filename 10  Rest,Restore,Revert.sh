# Unstage files
git restore --staged <file>

# Discard changes in working directory
git restore <file>

# Reset to previous commit (soft, mixed, hard)
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1

# Revert a commit (creates a new commit)
git revert <commit_hash>
