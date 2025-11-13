# DL (Description Logic) Queries for Grounded Research Ontology

This directory contains DL (Description Logic) queries for querying the Grounded Research Ontology using Protege's DL Query tab.

## What are DL Queries?

DL queries use Description Logic syntax to query ontologies. They are particularly useful for:
- Finding classes and their relationships
- Checking subsumption (subclass relationships)
- Finding instances that match class expressions
- Exploring the ontology structure
- Testing class definitions and constraints

## How to Use in Protege

1. Open the `grounded_research_ontology.owl` file in Protege
2. Go to **Tools → DL Query** (or use the DL Query tab)
3. Enter a query from the files in this directory
4. Click **Execute** to see results

## Namespace

All queries use the following namespace:
```
http://www.semanticweb.org/grounded_research_ontology#
```

In Protege, you can use the short form `:` prefix for the namespace.

## Query Files

- **`01_basic_class_queries.txt`** - Basic queries to find classes and explore structure
- **`02_project_formulation_queries.txt`** - Queries for Phase 1: Project Formulation
- **`03_data_collection_queries.txt`** - Queries for Phase 2: Data Collection
- **`04_consensus_queries.txt`** - Queries for Phase 3: Consensus
- **`05_findings_queries.txt`** - Queries for Phase 4: Findings
- **`06_complex_queries.txt`** - Complex class expressions and advanced queries
- **`07_property_queries.txt`** - Queries involving object properties

## DL Query Syntax

### Basic Syntax

- **Class name**: `ResearchProject`
- **Class with namespace**: `:ResearchProject` or full IRI
- **Intersection (AND)**: `Class1 and Class2`
- **Union (OR)**: `Class1 or Class2`
- **Negation (NOT)**: `not Class1`
- **Existential restriction**: `hasProperty some Class`
- **Universal restriction**: `hasProperty only Class`
- **Cardinality restrictions**: 
  - `hasProperty exactly 1 Class`
  - `hasProperty min 1 Class`
  - `hasProperty max 1 Class`
- **Self restriction**: `hasProperty some Self`

### Examples

**Find all instances of ResearchProject:**
```
ResearchProject
```

**Find classes that have an objective:**
```
hasObjective some ResearchObjective
```

**Find researchers that apply a method:**
```
appliesMethod some Method
```

**Find records that are interpreted:**
```
isInterpreted some Interpretation
```

## Notes

- DL queries work best when the ontology has instances (individuals)
- Some queries may return empty results if no instances exist
- Use the reasoner (HermiT, Pellet, etc.) for best results
- DL queries are evaluated against the inferred ontology (with reasoning applied)
- Queries can be saved and reused in Protege

