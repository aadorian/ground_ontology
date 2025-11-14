# Research Phases

The Grounded Research Ontology is structured into four main research phases, each representing a distinct stage in the qualitative research process.

## 📋 Phase Overview

| Phase | Description | Key Classes | Key Properties |
|-------|-------------|-------------|----------------|
| **1. Project Formulation** | Initial research planning and setup | ResearchProject, Researcher, Method | hasObjective, appliesMethod |
| **2. Data Collection** | Gathering and organizing research data | Record, SubjectObject, Bibliography | refersTo, hasSubjectObjects |
| **3. Consensus** | Reflexivity, interpretation, and analysis | Interpretation, Reflexivity | isInterpreted, hasCodes |
| **4. Findings** | Theory development and reporting | Report, GroundedTheory, Code | isReported, hasElaboratedTheory |

---

## 🔷 Phase 1: Project Formulation

The initial stage where the research foundation is established.

### Classes

- **ResearchProject**: Central concept representing a research project
- **ResearchObjective**: The objective of the research project
- **TheoreticalFramework**: Theoretical framework used in the research
- **Researcher**: Person conducting the research
- **FieldOfStudy**: Field or domain of study selected by the researcher
- **Method**: Research method applied by the researcher
  - **Interview**: Specific example of a research method (subclass of Method)
- **ResearchQuestion**: Research question posed by the research objective

### Properties

- `hasObjective`: ResearchProject → ResearchObjective
- `hasTheoreticalFramework`: ResearchProject → TheoreticalFramework
- `hasResearcher`: ResearchProject → Researcher
- `selects`: Researcher → FieldOfStudy
- `appliesMethod`: Researcher → Method
- `poses`: ResearchObjective → ResearchQuestion
- `hasSubjectObjectApplication`: FieldOfStudy → SubjectObject

### Example Workflow

```
ResearchProject
  ├── hasObjective → ResearchObjective
  │     └── poses → ResearchQuestion
  ├── hasTheoreticalFramework → TheoreticalFramework
  └── hasResearcher → Researcher
        ├── selects → FieldOfStudy
        │     └── hasSubjectObjectApplication → SubjectObject
        └── appliesMethod → Method
```

---

## 📊 Phase 2: Data Collection

The process of gathering and organizing research data.

### Classes

- **Bibliography**: Bibliography that refers to records
- **SubjectObject**: Subject or object of study in data collection
- **Record**: Base class for all types of records
  - **InterviewTranscript**: Transcript of an interview
  - **FieldNotes**: Field notes taken during research
  - **EnrichedDocument**: Enriched document with additional context

### Properties

- `refersTo`: Bibliography → Record
- `hasSubjectObjects`: SubjectObject → Record
- `isApplied`: SubjectObject → MethodOverSubjectObject (connects to Consensus phase)

### Example Workflow

```
FieldOfStudy
  └── hasSubjectObjectApplication → SubjectObject
        └── hasSubjectObjects → Record
              ├── InterviewTranscript
              ├── FieldNotes
              └── EnrichedDocument

Bibliography
  └── refersTo → Record
```

---

## 🤝 Phase 3: Consensus

The iterative and reflective processes involved in research analysis.

### Classes

- **Reflexivity**: Reflexive process in the consensus phase
- **MethodOverSubjectObject**: Method applied over subject or object
- **Interpretation**: Interpretation of records in the consensus phase

### Properties

- `isReformulated`: ResearchQuestion → Reflexivity (from Project Formulation)
- `toReformulation`: Reflexivity → ResearchQuestion (back to Project Formulation)
- `giveResponseTo`: Reflexivity → Report
- `hasRelatedWork`: Reflexivity → Report
- `hasMethodology`: Reflexivity → Report
- `isInterpreted`: Record → Interpretation (from Data Collection)
- `hasCodes`: Interpretation → Code (to Finding phase)

### Example Workflow

```
ResearchQuestion
  └── isReformulated → Reflexivity
        ├── toReformulation → ResearchQuestion (cycle)
        ├── giveResponseTo → Report
        ├── hasRelatedWork → Report
        └── hasMethodology → Report

Record
  └── isInterpreted → Interpretation
        └── hasCodes → Code
```

---

## 🎯 Phase 4: Findings

The outcomes and theoretical constructs derived from the research.

### Classes

- **Report**: Research report in the finding phase
- **GroundedTheory**: Grounded theory reported in the findings
- **AnalyticCategory**: Analytic category elaborated from grounded theory
- **DescriptiveCategory**: Descriptive category elaborated from analytic category
- **Code**: Code elaborated from descriptive category or directly from interpretation

### Properties

- `isReported`: Report → GroundedTheory
- `hasElaboratedTheory`: GroundedTheory → AnalyticCategory
- `hasRelativeAnalyticCategory`: AnalyticCategory → AnalyticCategory (self-relation)
- `hasElaboratedAnalyticCategory`: AnalyticCategory → DescriptiveCategory
- `hasRelatedDescriptiveCategory`: DescriptiveCategory → DescriptiveCategory (self-relation)
- `hasElaboratedDescriptiveCategory`: DescriptiveCategory → Code
- `hasRelatedCode`: Code → Code (self-relation)

### Example Workflow

```
Report
  └── isReported → GroundedTheory
        └── hasElaboratedTheory → AnalyticCategory
              ├── hasRelativeAnalyticCategory → AnalyticCategory (network)
              └── hasElaboratedAnalyticCategory → DescriptiveCategory
                    ├── hasRelatedDescriptiveCategory → DescriptiveCategory (network)
                    └── hasElaboratedDescriptiveCategory → Code
                          └── hasRelatedCode → Code (network)
```

---

## 🔄 Cross-Phase Relationships

### Complete Research Cycle

```
Project Formulation
  └── ResearchQuestion
        └── isReformulated → Consensus (Reflexivity)
              └── toReformulation → Project Formulation (cycle)

Data Collection
  └── Record
        └── isInterpreted → Consensus (Interpretation)
              └── hasCodes → Findings (Code)

Consensus
  └── Reflexivity
        └── giveResponseTo → Findings (Report)
              └── isReported → GroundedTheory
```

## 📚 Related Pages

- **[Classes and Properties](Classes-and-Properties)** - Complete reference
- **[Ontology Structure](Ontology-Structure)** - Architecture overview
- **[Examples and Use Cases](Examples-and-Use-Cases)** - Practical examples

---

*For detailed property and class information, see the [Classes and Properties](Classes-and-Properties) page.*

