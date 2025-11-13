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
- `CONTRIBUTING.md` - Guidelines for contributing to this project
- `.gitmessage` - Commit message template for conventional commits
- `sparql/` - Directory containing SPARQL queries organized by research phase and use case
- `dl-queries/` - Directory containing DL (Description Logic) queries for Protege

## SPARQL Queries

This repository includes a comprehensive collection of SPARQL queries for querying the ontology. The queries are organized in the `sparql/` directory:

- **Basic queries** - Explore ontology structure, classes, and properties
- **Phase-specific queries** - Queries for each of the four research phases
- **Cross-phase queries** - Queries spanning multiple phases
- **Analytical queries** - Complex queries for insights and statistics

See the [SPARQL Queries README](sparql/README.md) for detailed information on how to use these queries in Protege or other SPARQL endpoints.

### Quick Example Queries

Here are some example queries you can try immediately. All queries use the namespace prefix:
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
```

**Find all research projects:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?project
WHERE {
    ?project rdf:type :ResearchProject .
}
ORDER BY ?project
```

**Get research projects with their objectives:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?project ?objective
WHERE {
    ?project rdf:type :ResearchProject .
    ?project :hasObjective ?objective .
}
ORDER BY ?project
```

**Find all methods:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?method
WHERE {
    ?method rdf:type :Method .
}
ORDER BY ?method
```

**List all records:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?record ?recordType
WHERE {
    ?record rdf:type ?recordType .
    ?recordType rdfs:subClassOf* :Record .
}
ORDER BY ?recordType ?record
```

**Get records and their interpretations:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?record ?interpretation
WHERE {
    ?record rdf:type ?recordType .
    ?recordType rdfs:subClassOf* :Record .
    ?record :isInterpreted ?interpretation .
}
ORDER BY ?record
```

**Find all codes:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?code
WHERE {
    ?code rdf:type :Code .
}
ORDER BY ?code
```

**Complete theory hierarchy (GroundedTheory → AnalyticCategory → DescriptiveCategory → Code):**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?groundedTheory ?analyticCategory ?descriptiveCategory ?code
WHERE {
    ?groundedTheory rdf:type :GroundedTheory .
    ?groundedTheory :hasElaboratedTheory ?analyticCategory .
    ?analyticCategory :hasElaboratedAnalyticCategory ?descriptiveCategory .
    ?descriptiveCategory :hasElaboratedDescriptiveCategory ?code .
}
ORDER BY ?groundedTheory ?analyticCategory ?descriptiveCategory ?code
```

**Research question reformulation cycle:**
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?question ?reflexivity ?reformulatedQuestion
WHERE {
    ?question rdf:type :ResearchQuestion .
    ?question :isReformulated ?reflexivity .
    ?reflexivity :toReformulation ?reformulatedQuestion .
}
ORDER BY ?question
```

For more queries, see the complete collections:

**SPARQL Queries** (in [`sparql/`](sparql/) directory):
- [`01_basic_queries.sparql`](sparql/01_basic_queries.sparql) - 10 basic exploration queries
- [`02_project_formulation.sparql`](sparql/02_project_formulation.sparql) - 14 queries for Phase 1
- [`03_data_collection.sparql`](sparql/03_data_collection.sparql) - 14 queries for Phase 2
- [`04_consensus.sparql`](sparql/04_consensus.sparql) - 15 queries for Phase 3
- [`05_findings.sparql`](sparql/05_findings.sparql) - 18 queries for Phase 4
- [`06_cross_phase.sparql`](sparql/06_cross_phase.sparql) - 15 cross-phase queries
- [`07_analytical_queries.sparql`](sparql/07_analytical_queries.sparql) - 17 analytical queries

**DL Queries** (in [`dl-queries/`](dl-queries/) directory):
- [`01_basic_class_queries.txt`](dl-queries/01_basic_class_queries.txt) - 23 basic class queries
- [`02_project_formulation_queries.txt`](dl-queries/02_project_formulation_queries.txt) - 22 queries for Phase 1
- [`03_data_collection_queries.txt`](dl-queries/03_data_collection_queries.txt) - 24 queries for Phase 2
- [`04_consensus_queries.txt`](dl-queries/04_consensus_queries.txt) - 24 queries for Phase 3
- [`05_findings_queries.txt`](dl-queries/05_findings_queries.txt) - 28 queries for Phase 4
- [`06_complex_queries.txt`](dl-queries/06_complex_queries.txt) - 30 complex multi-phase queries
- [`07_property_queries.txt`](dl-queries/07_property_queries.txt) - 40 property-based queries

See the [DL Queries README](dl-queries/README.md) for information on using DL queries in Protege.

### DL Query Examples

DL queries use Description Logic syntax and are executed in Protege's DL Query tab. Here are some examples:

**Find all research projects:**
```
ResearchProject
```

**Find research projects with objectives:**
```
hasObjective some ResearchObjective
```

**Find researchers that apply methods:**
```
appliesMethod some Method
```

**Find records that are interpreted:**
```
isInterpreted some Interpretation
```

**Find complete theory hierarchy:**
```
hasElaboratedTheory some (hasElaboratedAnalyticCategory some (hasElaboratedDescriptiveCategory some Code))
```

**Find research questions in reformulation cycles:**
```
isReformulated some (toReformulation some ResearchQuestion)
```

**Find interpretations with codes:**
```
hasCodes some Code
```

**Find complete data to code path:**
```
isInterpreted some (hasCodes some Code)
```

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

## Contributing

We welcome contributions! Please read our [Contributing Guide](CONTRIBUTING.md) for details on:

- How to set up your development environment
- Our code of conduct
- The pull request process
- How to report bugs and request features

When creating issues or pull requests, please follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

