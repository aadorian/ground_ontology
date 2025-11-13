# Ground Ontology

A Protege ontology project modeling qualitative research methodology structured into four main phases: Project Formulation, Data Collection, Consensus, and Finding.

## Ontology Overview

The `grounded_research_ontology.owl` file contains a comprehensive ontology representing the cyclical and interconnected process of conducting grounded theory research. The ontology includes:

- **25 Classes** organized across 4 research phases
- **22 Object Properties** defining relationships between concepts
- **Hierarchical structures** from Grounded Theory to Codes
- **Cyclical relationships** supporting iterative research processes

### Research Phases

1. **Project Formulation**: Research objectives, theoretical frameworks, researchers, methods
2. **Data Collection**: Bibliographies, subjects/objects, records (interviews, field notes, documents)
3. **Consensus**: Reflexivity, interpretation, method application
4. **Finding**: Reports, grounded theory, analytic categories, descriptive categories, codes

## Quick Start

1. Open `grounded_research_ontology.owl` in Protege
2. See `PROTEGE_SETUP.md` for detailed setup instructions
3. Read `ONTOLOGY_DOCUMENTATION.md` for complete ontology documentation

## Files

- `grounded_research_ontology.owl` - Main OWL ontology file
- `ONTOLOGY_DOCUMENTATION.md` - Detailed ontology documentation
- `PROTEGE_SETUP.md` - Protege setup and usage instructions
- `.gitmessage` - Commit message template for conventional commits

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

