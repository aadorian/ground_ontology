# SPARQL Queries for Grounded Research Ontology

This directory contains SPARQL queries for querying the Grounded Research Ontology. These queries are organized by research phase and use case.

## Namespace

All queries use the following namespace prefix:
```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
```

## How to Use

### In Protege

1. Open the `grounded_research_ontology.owl` file in Protege
2. Go to **Tools → SPARQL Query**
3. Copy and paste a query from the files in this directory
4. Execute the query

### With Other SPARQL Endpoints

If you're using a SPARQL endpoint (e.g., Apache Jena Fuseki, GraphDB), you can use these queries directly after loading the ontology.

## Query Files

- **`01_basic_queries.sparql`** - Basic queries to explore the ontology structure
- **`02_project_formulation.sparql`** - Queries for Phase 1: Project Formulation
- **`03_data_collection.sparql`** - Queries for Phase 2: Data Collection
- **`04_consensus.sparql`** - Queries for Phase 3: Consensus
- **`05_findings.sparql`** - Queries for Phase 4: Findings
- **`06_cross_phase.sparql`** - Queries spanning multiple phases
- **`07_analytical_queries.sparql`** - Complex analytical and reporting queries

## Query Categories

### Basic Queries
- List all classes
- List all properties
- Count instances
- Explore ontology structure

### Phase-Specific Queries
Each phase has queries for:
- Finding instances of classes
- Following relationships
- Exploring hierarchies
- Understanding connections

### Cross-Phase Queries
- Tracking the research cycle
- Following data flow from collection to findings
- Understanding reformulation cycles

### Analytical Queries
- Research project summaries
- Complete research workflows
- Statistics and aggregations
- Path analysis

## Notes

- All queries assume the ontology namespace is properly set
- Some queries may return empty results if no instances (individuals) have been created
- Queries can be modified to add filters, limits, or additional conditions
- For best results, create instances in Protege before running instance-based queries

