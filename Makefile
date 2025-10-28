.PHONY: help reset base c commit s r b-clean status add push pull log diff stash unstash amend undo

# =============================================================================
# GIT & BRANCH MANAGEMENT
# =============================================================================

# Default help
help:
	@echo "Git Command Shortcuts:"
	@echo ""
	@echo "Quick Commands:"
	@echo "  make c         - Format and commit with 'chore' message"
	@echo "  make s         - Switch to new random branch"
	@echo "  make r         - Reset: switch to develop, pull, create new random branch"
	@echo ""
	@echo "Branch Management:"
	@echo "  make base      - Switch to develop and pull"
	@echo "  make b-clean   - Delete merged branches"
	@echo "  make reset     - Soft reset to previous commit"
	@echo ""
	@echo "Standard Git:"
	@echo "  make status    - Show git status"
	@echo "  make add       - Add all changes"
	@echo "  make commit    - Add all and commit with 'chore'"
	@echo "  make push      - Push to current branch"
	@echo "  make pull      - Pull from current branch"
	@echo "  make log       - Show commit history"
	@echo "  make diff      - Show unstaged changes"

# Soft reset to previous commit
reset:
	git reset --soft HEAD^

# Switch to develop and pull
base:
	git switch develop && git pull origin develop

# Format then commit
c: format commit

# Add all and commit with 'chore' message
commit:
	git add . && git commit -m 'chore'

# Switch to new random branch (4-digit number)
s:
	git switch -c "$$(( ( RANDOM % 9000 ) + 1000 ))"

# Reset workflow: base + new random branch
r:
	git switch develop && git pull origin develop && git switch -c "$$(( ( RANDOM % 9000 ) + 1000 ))"

# Delete merged branches (excluding current)
b-clean:
	git branch --merged | grep -v "\*" | xargs git branch -d

# Format code (placeholder - customize for your project)
format:
	@echo "Running format..."
	@# Add your formatting command here (e.g., prettier, eslint --fix, etc.)

# =============================================================================
# STANDARD GIT COMMANDS
# =============================================================================

status:
	git status

add:
	git add .

push:
	git push

pull:
	git pull

log:
	git log --oneline --graph --decorate --all -20

diff:
	git diff

diff-staged:
	git diff --staged

stash:
	git stash

unstash:
	git stash pop

stash-list:
	git stash list

amend:
	git commit --amend

undo:
	git reset --soft HEAD~1

remote:
	git remote -v
