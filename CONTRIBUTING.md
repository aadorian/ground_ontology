# Contributing to Ground Ontology

Thank you for your interest in contributing to Ground Ontology! This document provides guidelines and instructions for contributing to this project.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Conventional Commits](#conventional-commits)
- [Pull Request Process](#pull-request-process)
- [Issue Reporting](#issue-reporting)
- [Questions?](#questions)

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for all contributors.

## Getting Started

1. **Fork the repository** to your GitHub account
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/ground_ontology.git
   cd ground_ontology
   ```
3. **Add the upstream remote**:
   ```bash
   git remote add upstream https://github.com/ORIGINAL_OWNER/ground_ontology.git
   ```
4. **Create a new branch** for your work:
   ```bash
   git checkout -b feat/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```

## Development Workflow

1. **Keep your fork updated**:
   ```bash
   git fetch upstream
   git checkout main
   git merge upstream/main
   ```

2. **Create a feature branch** from `main`:
   ```bash
   git checkout main
   git pull upstream main
   git checkout -b feat/your-feature-name
   ```

3. **Make your changes**:
   - Follow the existing code style and conventions
   - Test your changes thoroughly
   - Update documentation as needed

4. **Commit your changes** using [Conventional Commits](#conventional-commits)

5. **Push to your fork**:
   ```bash
   git push origin feat/your-feature-name
   ```

6. **Create a Pull Request** (see [Pull Request Process](#pull-request-process))

## Conventional Commits

This project follows the [Conventional Commits](https://www.conventionalcommits.org/) specification. All commit messages must follow this format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Commit Types

- **`feat`**: A new feature
- **`fix`**: A bug fix
- **`docs`**: Documentation only changes
- **`style`**: Changes that do not affect the meaning of the code (formatting, missing semicolons, etc.)
- **`refactor`**: A code change that neither fixes a bug nor adds a feature
- **`perf`**: A code change that improves performance
- **`test`**: Adding missing tests or correcting existing tests
- **`build`**: Changes that affect the build system or external dependencies
- **`ci`**: Changes to CI configuration files and scripts
- **`chore`**: Other changes that don't modify src or test files
- **`revert`**: Reverts a previous commit

### Scope (Optional)

The scope should be the area of the codebase affected. Examples:
- `ontology`: Changes to the OWL ontology file
- `docs`: Documentation changes
- `setup`: Setup or configuration changes
- `ci`: CI/CD changes

### Subject

- Use imperative, present tense: "add" not "added" nor "adds"
- Don't capitalize the first letter
- No period (.) at the end
- Maximum 72 characters

### Body (Optional)

- Explain **what** and **why** vs. how
- Wrap at 72 characters
- Provide additional context about the change

### Footer (Optional)

- Reference issues: `Closes #123`, `Fixes #456`
- Breaking changes: `BREAKING CHANGE: <description>`

### Examples

```bash
feat(ontology): add new class for research methodology

Add ResearchMethodology class to support additional research
approaches beyond grounded theory.

Closes #42
```

```bash
fix(parser): resolve null pointer exception in XML parsing

The XML parser was throwing a NullPointerException when
encountering empty namespace declarations. Added null checks
to handle this case gracefully.

Fixes #15
```

```bash
docs(readme): update installation instructions

Update README with new Protege version requirements and
additional setup steps for macOS users.
```

```bash
refactor(utils): simplify date formatting logic

Extract date formatting into a separate utility function
to improve code reusability and maintainability.
```

## Pull Request Process

### Before Submitting

1. **Ensure your code follows the project's conventions**
2. **Test your changes** thoroughly
3. **Update documentation** if you've changed functionality
4. **Check that your commits follow** [Conventional Commits](#conventional-commits)
5. **Rebase your branch** on the latest `main` branch:
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

### PR Title and Description

Your Pull Request title should follow the same format as commit messages:

```
<type>(<scope>): <subject>
```

**Example PR Titles:**
- `feat(ontology): add ResearchMethodology class`
- `fix(parser): resolve null pointer exception`
- `docs(readme): update installation instructions`

**PR Description Template:**

```markdown
## Description
<!-- Provide a brief description of the changes -->

## Type of Change
<!-- Mark the relevant option with an 'x' -->
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Code refactoring
- [ ] Performance improvement
- [ ] Other (please describe):

## Related Issues
<!-- Link to related issues -->
Closes #<!-- issue number -->
Fixes #<!-- issue number -->
Related to #<!-- issue number -->

## Changes Made
<!-- List the specific changes made -->
- 
- 
- 

## Testing
<!-- Describe the tests you ran and how to verify your changes -->
- 
- 

## Checklist
<!-- Mark completed items with an 'x' -->
- [ ] My code follows the project's style guidelines
- [ ] I have performed a self-review of my code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have updated the documentation accordingly
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes
- [ ] Any dependent changes have been merged and published
- [ ] My commit messages follow the Conventional Commits specification
```

### PR Review Process

1. **Automated checks** will run (if configured)
2. **Maintainers will review** your PR
3. **Address feedback** by pushing additional commits to your branch
4. **Keep commits focused** - if requested, you may need to squash commits
5. **Once approved**, a maintainer will merge your PR

### After Your PR is Merged

- Your branch can be safely deleted
- Update your local `main` branch:
  ```bash
  git checkout main
  git pull upstream main
  ```

## Issue Reporting

Before creating an issue, please:

1. **Search existing issues** to see if your issue has already been reported
2. **Check if it's been fixed** in a recent commit
3. **Use the appropriate issue template** (Bug Report or Feature Request)

### Bug Reports

Use the [Bug Report template](.github/ISSUE_TEMPLATE/bug_report.yml) and include:
- Clear description of the bug
- Steps to reproduce
- Expected vs. actual behavior
- Environment details (OS, Protege version, etc.)
- Screenshots if applicable

### Feature Requests

Use the [Feature Request template](.github/ISSUE_TEMPLATE/feature_request.yml) and include:
- Clear description of the proposed feature
- Use case and motivation
- Proposed implementation (if you have ideas)
- Alternatives considered

## Questions?

If you have questions about contributing:
- Open a discussion in the GitHub Discussions (if enabled)
- Create an issue with the `question` label
- Contact the maintainers

## Additional Resources

- [Conventional Commits Specification](https://www.conventionalcommits.org/)
- [GitHub Flow Guide](https://guides.github.com/introduction/flow/)
- [Protege Documentation](https://protege.stanford.edu/)

Thank you for contributing to Ground Ontology! 🎉

