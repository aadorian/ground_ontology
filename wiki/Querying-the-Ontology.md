# Querying the Ontology

The Grounded Research Ontology supports multiple query languages and methods for exploring and extracting information.

## 🔍 Query Methods

1. **SPARQL Queries** - RDF query language for graph-based queries
2. **DL Queries** - Description Logic queries for class-based reasoning
3. **Definition Language Queries** - OWL class expressions for defining new classes

---

## 📊 SPARQL Queries

SPARQL (SPARQL Protocol and RDF Query Language) is used to query RDF data.

### Basic Setup

All SPARQL queries use these prefixes:

```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
```

### Example Queries

#### Find All Research Projects

```sparql
SELECT ?project
WHERE {
    ?project rdf:type :ResearchProject .
}
ORDER BY ?project
```

#### Get Projects with Objectives

```sparql
SELECT ?project ?objective
WHERE {
    ?project rdf:type :ResearchProject .
    ?project :hasObjective ?objective .
}
ORDER BY ?project
```

#### Find Records and Their Interpretations

```sparql
SELECT ?record ?interpretation
WHERE {
    ?record rdf:type/rdfs:subClassOf* :Record .
    ?record :isInterpreted ?interpretation .
}
ORDER BY ?record
```

#### Complete Theory Hierarchy

```sparql
SELECT ?groundedTheory ?analyticCategory ?descriptiveCategory ?code
WHERE {
    ?groundedTheory rdf:type :GroundedTheory .
    ?groundedTheory :hasElaboratedTheory ?analyticCategory .
    ?analyticCategory :hasElaboratedAnalyticCategory ?descriptiveCategory .
    ?descriptiveCategory :hasElaboratedDescriptiveCategory ?code .
}
ORDER BY ?groundedTheory
```

### Query Collections

The repository includes **103 SPARQL queries** organized by category:

- **Basic queries** (10) - Explore ontology structure
- **Project Formulation** (14) - Phase 1 queries
- **Data Collection** (14) - Phase 2 queries
- **Consensus** (15) - Phase 3 queries
- **Findings** (18) - Phase 4 queries
- **Cross-Phase** (15) - Multi-phase queries
- **Analytical** (17) - Complex analytical queries

See: `sparql/` directory in the repository

---

## 🧠 DL (Description Logic) Queries

DL queries use Description Logic syntax for class-based reasoning in Protege.

### Basic Syntax

- **Class**: `ResearchProject`
- **Intersection (AND)**: `Class1 and Class2`
- **Union (OR)**: `Class1 or Class2`
- **Existential**: `hasProperty some Class`
- **Cardinality**: `hasProperty min 2 Class`

### Example Queries

#### Find Research Projects with Objectives

```
hasObjective some ResearchObjective
```

#### Find Researchers with Methods

```
appliesMethod some Method
```

#### Find Records That Are Interpreted

```
isInterpreted some Interpretation
```

#### Find Complete Theory Hierarchy

```
hasElaboratedTheory some (hasElaboratedAnalyticCategory some (hasElaboratedDescriptiveCategory some Code))
```

### Query Collections

The repository includes **191 DL queries** organized by category:

- **Basic class queries** (23) - Find instances of classes
- **Project Formulation** (22) - Phase 1 queries
- **Data Collection** (24) - Phase 2 queries
- **Consensus** (24) - Phase 3 queries
- **Findings** (28) - Phase 4 queries
- **Complex queries** (30) - Multi-phase queries
- **Property queries** (40) - Property-based queries

See: `dl-queries/` directory in the repository

---

## 📐 Definition Language Queries

OWL class definition expressions for defining new classes or creating complex queries.

### Basic Syntax

- **Intersection**: `Class1 and Class2`
- **Existential**: `hasProperty some Class`
- **Cardinality**: `hasProperty exactly 1 Class`
- **Negation**: `not Class`

### Example Definitions

#### Complete Research Project

```
ResearchProject and 
  (hasObjective some ResearchObjective) and 
  (hasTheoreticalFramework some TheoreticalFramework) and 
  (hasResearcher some Researcher)
```

#### Interpreted Records

```
Record and (isInterpreted some Interpretation)
```

#### Active Researcher

```
Researcher and (selects some FieldOfStudy) and (appliesMethod some Method)
```

### Definition Collections

The repository includes **176 class definitions** organized by category:

- **Class definitions** (41) - Basic definitions for each phase
- **Composite definitions** (30) - Multi-phase definitions
- **Constraint definitions** (40) - Definitions with constraints
- **Pattern definitions** (30) - Research pattern definitions
- **Derived definitions** (35) - Derived class definitions

See: `definition-queries/` directory in the repository

---

## 🛠️ Using Queries in Protege

### SPARQL Queries

1. Open Protege
2. Go to **Tools → SPARQL Query**
3. Paste your query
4. Click **Execute**

### DL Queries

1. Open Protege
2. Go to **Tools → DL Query** (or use DL Query tab)
3. Enter your query
4. Click **Execute**

### Class Definitions

1. Open Protege
2. Create a new class or select existing class
3. In **Equivalent To** or **SubClass Of**, paste definition
4. Reasoner will validate and classify

---

## 📚 Query Examples by Use Case

### Find All Instances

**SPARQL:**
```sparql
SELECT ?instance ?class
WHERE {
    ?instance rdf:type ?class .
    FILTER (STRSTARTS(STR(?class), "http://www.semanticweb.org/grounded_research_ontology#"))
}
```

**DL:**
```
owl:Thing
```

### Count Instances

**SPARQL:**
```sparql
SELECT ?class (COUNT(?instance) AS ?count)
WHERE {
    ?instance rdf:type ?class .
    FILTER (STRSTARTS(STR(?class), "http://www.semanticweb.org/grounded_research_ontology#"))
}
GROUP BY ?class
ORDER BY DESC(?count)
```

### Find Relationships

**SPARQL:**
```sparql
SELECT ?subject ?predicate ?object
WHERE {
    ?subject ?predicate ?object .
    FILTER (STRSTARTS(STR(?predicate), "http://www.semanticweb.org/grounded_research_ontology#"))
}
LIMIT 100
```

---

## 🔗 Related Pages

- **[Examples and Use Cases](Examples-and-Use-Cases)** - Practical query examples
- **[Classes and Properties](Classes-and-Properties)** - Reference for querying
- **[Research Phases](Research-Phases)** - Phase-specific queries

---

## 📖 Query Documentation

- **SPARQL Queries**: See `sparql/README.md`
- **DL Queries**: See `dl-queries/README.md`
- **Definition Queries**: See `definition-queries/README.md`

---

*For more query examples, explore the query directories in the repository.*

