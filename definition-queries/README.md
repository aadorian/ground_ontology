# Definition Language Queries for Grounded Research Ontology

This directory contains OWL class definition expressions that can be used to define new classes or create complex class expressions in the Grounded Research Ontology.

## What are Definition Language Queries?

Definition Language queries are OWL class expressions that can be used to:
- Define new classes based on existing classes and properties
- Create complex class expressions for querying
- Define subclasses with specific constraints
- Create class definitions that can be added to the ontology
- Express complex patterns and relationships

These expressions follow OWL 2 DL (Description Logic) syntax and can be used in:
- Protege's Class Editor (to define new classes)
- DL Query tab (as complex queries)
- OWL API programs
- Reasoner-based queries

## How to Use

### In Protege Class Editor

1. Open the `grounded_research_ontology.owl` file in Protege
2. Create a new class or select an existing class
3. In the **Equivalent To** or **SubClass Of** field, paste a definition expression
4. The reasoner will validate and classify the new definition

### In DL Query Tab

1. Open the DL Query tab in Protege
2. Paste a class expression from these files
3. Execute to find instances matching the definition

## Namespace

All expressions use the following namespace:
```
http://www.semanticweb.org/grounded_research_ontology#
```

In Protege, you can use the short form `:` prefix for the namespace.

## Definition Files

- **`01_class_definitions.txt`** - Basic class definitions for each phase
- **`02_composite_definitions.txt`** - Composite class definitions combining multiple phases
- **`03_constraint_definitions.txt`** - Class definitions with cardinality and other constraints
- **`04_pattern_definitions.txt`** - Pattern-based class definitions for common research patterns
- **`05_derived_definitions.txt`** - Derived class definitions based on relationships

## OWL Class Expression Syntax

### Basic Constructors

- **Intersection (AND)**: `Class1 and Class2`
- **Union (OR)**: `Class1 or Class2`
- **Complement (NOT)**: `not Class1`
- **Existential restriction**: `hasProperty some Class`
- **Universal restriction**: `hasProperty only Class`
- **Cardinality restrictions**: 
  - `hasProperty exactly n Class`
  - `hasProperty min n Class`
  - `hasProperty max n Class`
- **Self restriction**: `hasProperty some Self`

### Examples

**Define a class for projects with objectives:**
```
ResearchProject and (hasObjective some ResearchObjective)
```

**Define a class for interpreted records:**
```
Record and (isInterpreted some Interpretation)
```

**Define a class with cardinality constraint:**
```
ResearchProject and (hasResearcher min 2 Researcher)
```

## Notes

- These definitions can be used to create new classes in the ontology
- Use the reasoner to check for consistency and classification
- Definitions can be combined and nested for complex expressions
- Some definitions may require the ontology to have instances to be meaningful
- Definitions follow OWL 2 DL expressivity

