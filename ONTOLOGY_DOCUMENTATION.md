# Grounded Research Ontology Documentation

## Overview

This ontology models a qualitative research methodology structured into four main phases: Project Formulation, Data Collection, Consensus, and Finding. It represents the cyclical and interconnected process of conducting grounded theory research.

## Ontology Structure

### Phase 1: Project Formulation

The initial stage of a research project where the foundation is established.

**Classes:**
- **ResearchProject**: Central concept representing a research project
- **ResearchObjective**: The objective of the research project
- **TheoreticalFramework**: Theoretical framework used in the research
- **Researcher**: Person conducting the research
- **FieldOfStudy**: Field or domain of study selected by the researcher
- **Method**: Research method applied by the researcher
  - **Interview**: Specific example of a research method (subclass of Method)
- **ResearchQuestion**: Research question posed by the research objective

**Properties:**
- `hasObjective`: ResearchProject → ResearchObjective
- `hasTheoreticalFramework`: ResearchProject → TheoreticalFramework
- `hasResearcher`: ResearchProject → Researcher
- `selects`: Researcher → FieldOfStudy
- `appliesMethod`: Researcher → Method
- `poses`: ResearchObjective → ResearchQuestion
- `hasSubjectObjectApplication`: FieldOfStudy → SubjectObject

### Phase 2: Data Collection

The process of gathering and organizing research data.

**Classes:**
- **Bibliography**: Bibliography that refers to records
- **SubjectObject**: Subject or object of study in data collection
- **Record**: Base class for all types of records
  - **InterviewTranscript**: Transcript of an interview
  - **FieldNotes**: Field notes taken during research
  - **EnrichedDocument**: Enriched document with additional context

**Properties:**
- `refersTo`: Bibliography → Record
- `hasSubjectObjects`: SubjectObject → Record
- `isApplied`: SubjectObject → MethodOverSubjectObject (connects to Consensus phase)

### Phase 3: Consensus

The iterative and reflective processes involved in research analysis.

**Classes:**
- **Reflexivity**: Reflexive process in the consensus phase
- **MethodOverSubjectObject**: Method applied over subject or object
- **Interpretation**: Interpretation of records in the consensus phase

**Properties:**
- `isReformulated`: ResearchQuestion → Reflexivity (from Project Formulation)
- `toReformulation`: Reflexivity → ResearchQuestion (back to Project Formulation)
- `giveResponseTo`: Reflexivity → Report
- `hasRelatedWork`: Reflexivity → Report
- `hasMethodology`: Reflexivity → Report
- `isInterpreted`: Record → Interpretation (from Data Collection)
- `hasCodes`: Interpretation → Code (to Finding phase)

### Phase 4: Finding

The outcomes and theoretical constructs derived from the research.

**Classes:**
- **Report**: Research report in the finding phase
- **GroundedTheory**: Grounded theory reported in the findings
- **AnalyticCategory**: Analytic category elaborated from grounded theory
- **DescriptiveCategory**: Descriptive category elaborated from analytic category
- **Code**: Code elaborated from descriptive category or directly from interpretation

**Properties:**
- `isReported`: Report → GroundedTheory
- `hasElaboratedTheory`: GroundedTheory → AnalyticCategory
- `hasRelativeAnalyticCategory`: AnalyticCategory → AnalyticCategory (self-relation)
- `hasElaboratedAnalyticCategory`: AnalyticCategory → DescriptiveCategory
- `hasRelatedDescriptiveCategory`: DescriptiveCategory → DescriptiveCategory (self-relation)
- `hasElaboratedDescriptiveCategory`: DescriptiveCategory → Code
- `hasRelatedCode`: Code → Code (self-relation)

## Key Relationships

### Cyclical Nature

The ontology demonstrates the cyclical nature of qualitative research:

1. **Research Question Reformulation**: ResearchQuestion `isReformulated` → Reflexivity `toReformulation` → ResearchQuestion
2. **Data to Interpretation**: Record `isInterpreted` → Interpretation
3. **Interpretation to Codes**: Interpretation `hasCodes` → Code
4. **Theory Development**: GroundedTheory → AnalyticCategory → DescriptiveCategory → Code

### Hierarchical Structure

The Finding phase shows a hierarchical structure:
- GroundedTheory
  - AnalyticCategory (with self-relations)
    - DescriptiveCategory (with self-relations)
      - Code (with self-relations)

## Usage in Protege

1. Open the `grounded_research_ontology.owl` file in Protege
2. Navigate through the classes using the Class hierarchy
3. View object properties and their domains/ranges
4. Use the reasoner to check for inconsistencies
5. Create individuals (instances) to model specific research projects

## Example Queries

### SPARQL Examples

**Find all methods:**
```sparql
SELECT ?method WHERE {
  ?method rdf:type :Method .
}
```

**Find all records:**
```sparql
SELECT ?record WHERE {
  ?record rdf:type :Record .
}
```

**Find research projects with their objectives:**
```sparql
SELECT ?project ?objective WHERE {
  ?project :hasObjective ?objective .
}
```

## Notes

- The ontology uses the namespace: `http://www.semanticweb.org/grounded_research_ontology#`
- All properties are object properties (relationships between classes)
- Self-relations (e.g., `hasRelatedCode`) allow for complex networks within categories
- The ontology supports the iterative nature of qualitative research methodology

