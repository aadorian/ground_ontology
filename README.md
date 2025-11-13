# Ground Ontology

## Conventional Commits

This repository follows the [Conventional Commits](https://www.conventionalcommits.org/) specification.

### Commit Message Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `build`: Changes that affect the build system or external dependencies
- `ci`: Changes to CI configuration files and scripts
- `chore`: Other changes that don't modify src or test files
- `revert`: Reverts a previous commit

### Examples

```
feat(api): add user authentication endpoint
fix(parser): resolve null pointer exception in XML parsing
docs(readme): update installation instructions
refactor(utils): simplify date formatting logic
```

### Guidelines

- **Subject line**: Use imperative, present tense ("add" not "added" nor "adds")
- **Subject line**: Don't capitalize first letter
- **Subject line**: No period (.) at the end
- **Subject line**: Maximum 72 characters
- **Body**: Explain what and why vs. how (optional)
- **Footer**: Reference issues or breaking changes (optional)

### Validation

A Git hook automatically validates commit messages to ensure they follow the conventional commit format.

