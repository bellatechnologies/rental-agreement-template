# Claude Code Instructions for Rental Agreement Template

This file contains project-specific instructions for Claude Code when working on this repository.

## Git Branching Model

This project follows the **Git Flow branching model** as described in [A Successful Git Branching Model](https://nvie.com/posts/a-successful-git-branching-model/).

### Branch Types

**Main Branches:**
- `main` - Production-ready code. Always stable and deployable.
- `develop` - Integration branch for features. Latest delivered development changes for the next release.

**Supporting Branches:**
- `feature/*` - New features or enhancements
  - Branch from: `develop`
  - Merge back to: `develop`
  - Naming: `feature/<descriptive-name>` (e.g., `feature/add-payment-terms`)

- `release/*` - Preparation for production release
  - Branch from: `develop`
  - Merge back to: `develop` AND `main`
  - Naming: `release/<version>` (e.g., `release/1.2.0`)

- `hotfix/*` - Critical fixes for production
  - Branch from: `main`
  - Merge back to: `develop` AND `main`
  - Naming: `hotfix/<version>` (e.g., `hotfix/1.1.1`)

### Branch Creation Rules

When creating branches, **ALWAYS**:
1. Determine the appropriate branch type based on the work
2. Branch from the correct source branch (see above)
3. Use descriptive, kebab-case names
4. Prefix with the branch type (feature/, release/, hotfix/)

### Examples:
```bash
# Creating a new feature
git checkout develop
git checkout -b feature/add-termination-clause

# Creating a release
git checkout develop
git checkout -b release/2.0.0

# Creating a hotfix
git checkout main
git checkout -b hotfix/1.0.1
```

## Commit Message Convention

This project uses **Conventional Commits** as specified at [conventionalcommits.org](https://www.conventionalcommits.org/en/v1.0.0/).

### Commit Message Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Commit Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that don't affect code meaning (whitespace, formatting, missing semicolons)
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `perf`: Performance improvements
- `test`: Adding missing tests or correcting existing tests
- `build`: Changes to build system or external dependencies
- `ci`: Changes to CI configuration files and scripts
- `chore`: Other changes that don't modify src or test files
- `revert`: Reverts a previous commit

### Commit Message Rules

1. Use the imperative mood in the subject line ("add" not "added" or "adds")
2. Do not end the subject line with a period
3. Capitalize the subject line
4. Limit the subject line to 50-72 characters
5. Separate subject from body with a blank line
6. Use the body to explain what and why (not how)
7. Use `BREAKING CHANGE:` footer for breaking changes

### Examples:

```bash
# Feature addition
feat: Add late payment penalty clause

# Bug fix with scope
fix(formatting): Correct indentation in signature section

# Documentation update
docs: Update README with build instructions

# Breaking change
feat!: Restructure rental terms section

BREAKING CHANGE: The rental terms section now uses a different format
that requires updating existing templates.

# Multiple paragraphs
refactor(style): Improve responsive design for mobile devices

Updated media queries to better handle small screens.
Modified font sizes and padding for better readability.
```

## Git Workflow

When working on this project:

1. **Always check current branch** before starting work
2. **Create feature branches** from `develop` for new work
3. **Commit frequently** with clear, conventional commit messages
4. **Test before committing** - run `make build` to verify changes
5. **Merge to develop** when feature is complete
6. **Never force push** to `main` or `develop` without explicit authorization

## Pull Request Guidelines

When creating pull requests:
- Use conventional commit format in PR title
- Reference related issues in PR description
- Ensure all builds pass (`make build`)
- Request review before merging to `main`

## Important Notes

- **ALWAYS** follow Git Flow branching model for branch creation
- **ALWAYS** use Conventional Commits format for commit messages
- **NEVER** commit directly to `main` branch
- **VERIFY** builds succeed before committing (`make build`)
