# Classes and Properties Reference

Complete reference of all classes and properties in the Grounded Research Ontology.

## 📦 Classes (25 total)

### Phase 1: Project Formulation (8 classes)

| Class | Description | Subclasses |
|-------|-------------|------------|
| **ResearchProject** | Central concept representing a research project | - |
| **ResearchObjective** | The objective of the research project | - |
| **TheoreticalFramework** | Theoretical framework used in the research | - |
| **Researcher** | Person conducting the research | - |
| **FieldOfStudy** | Field or domain of study selected by the researcher | - |
| **Method** | Research method applied by the researcher | Interview |
| **Interview** | Specific example of a research method | - |
| **ResearchQuestion** | Research question posed by the research objective | - |

### Phase 2: Data Collection (6 classes)

| Class | Description | Subclasses |
|-------|-------------|------------|
| **Bibliography** | Bibliography that refers to records | - |
| **SubjectObject** | Subject or object of study in data collection | - |
| **Record** | Base class for all types of records | InterviewTranscript, FieldNotes, EnrichedDocument |
| **InterviewTranscript** | Transcript of an interview | - |
| **FieldNotes** | Field notes taken during research | - |
| **EnrichedDocument** | Enriched document with additional context | - |

### Phase 3: Consensus (3 classes)

| Class | Description | Subclasses |
|-------|-------------|------------|
| **Reflexivity** | Reflexive process in the consensus phase | - |
| **MethodOverSubjectObject** | Method applied over subject or object | - |
| **Interpretation** | Interpretation of records in the consensus phase | - |

### Phase 4: Findings (6 classes)

| Class | Description | Subclasses |
|-------|-------------|------------|
| **Report** | Research report in the finding phase | - |
| **GroundedTheory** | Grounded theory reported in the findings | - |
| **AnalyticCategory** | Analytic category elaborated from grounded theory | - |
| **DescriptiveCategory** | Descriptive category elaborated from analytic category | - |
| **Code** | Code elaborated from descriptive category or directly from interpretation | - |
| **CoreCategory** | Core category (if applicable) | - |

### Additional Classes (2 classes)

| Class | Description | Subclasses |
|-------|-------------|------------|
| **owl:Thing** | Top-level class (OWL standard) | All classes |
| **owl:Nothing** | Bottom-level class (OWL standard) | - |

---

## 🔗 Object Properties (22 total)

### Phase 1: Project Formulation Properties

| Property | Domain | Range | Description |
|----------|--------|-------|-------------|
| `hasObjective` | ResearchProject | ResearchObjective | Links project to its objective |
| `hasTheoreticalFramework` | ResearchProject | TheoreticalFramework | Links project to its framework |
| `hasResearcher` | ResearchProject | Researcher | Links project to researchers |
| `selects` | Researcher | FieldOfStudy | Links researcher to field of study |
| `appliesMethod` | Researcher | Method | Links researcher to methods |
| `poses` | ResearchObjective | ResearchQuestion | Links objective to questions |
| `hasSubjectObjectApplication` | FieldOfStudy | SubjectObject | Links field to subject objects |

### Phase 2: Data Collection Properties

| Property | Domain | Range | Description |
|----------|--------|-------|-------------|
| `refersTo` | Bibliography | Record | Links bibliography to records |
| `hasSubjectObjects` | SubjectObject | Record | Links subject object to records |
| `isApplied` | SubjectObject | MethodOverSubjectObject | Links subject object to method application |

### Phase 3: Consensus Properties

| Property | Domain | Range | Description |
|----------|--------|-------|-------------|
| `isReformulated` | ResearchQuestion | Reflexivity | Links question to reflexivity |
| `toReformulation` | Reflexivity | ResearchQuestion | Links reflexivity to reformulated question |
| `giveResponseTo` | Reflexivity | Report | Links reflexivity to report |
| `hasRelatedWork` | Reflexivity | Report | Links reflexivity to related work |
| `hasMethodology` | Reflexivity | Report | Links reflexivity to methodology |
| `isInterpreted` | Record | Interpretation | Links record to interpretation |
| `hasCodes` | Interpretation | Code | Links interpretation to codes |

### Phase 4: Findings Properties

| Property | Domain | Range | Description |
|----------|--------|-------|-------------|
| `isReported` | Report | GroundedTheory | Links report to grounded theory |
| `hasElaboratedTheory` | GroundedTheory | AnalyticCategory | Links theory to analytic categories |
| `hasRelativeAnalyticCategory` | AnalyticCategory | AnalyticCategory | Self-relation for category networks |
| `hasElaboratedAnalyticCategory` | AnalyticCategory | DescriptiveCategory | Links analytic to descriptive categories |
| `hasRelatedDescriptiveCategory` | DescriptiveCategory | DescriptiveCategory | Self-relation for category networks |
| `hasElaboratedDescriptiveCategory` | DescriptiveCategory | Code | Links descriptive category to codes |
| `hasRelatedCode` | Code | Code | Self-relation for code networks |

---

## 🏗️ Class Hierarchy

```
owl:Thing
├── ResearchProject
├── ResearchObjective
├── TheoreticalFramework
├── Researcher
├── FieldOfStudy
├── Method
│   └── Interview
├── ResearchQuestion
├── Bibliography
├── SubjectObject
├── Record
│   ├── InterviewTranscript
│   ├── FieldNotes
│   └── EnrichedDocument
├── Reflexivity
├── MethodOverSubjectObject
├── Interpretation
├── Report
├── GroundedTheory
├── AnalyticCategory
├── DescriptiveCategory
├── Code
└── CoreCategory
```

---

## 🔄 Property Relationships

### Cross-Phase Connections

- **Formulation → Collection**: `hasSubjectObjectApplication`
- **Collection → Consensus**: `isInterpreted`
- **Consensus → Findings**: `hasCodes`
- **Findings → Formulation**: `giveResponseTo`, `hasRelatedWork`, `hasMethodology`

### Self-Relations (Networks)

- `hasRelativeAnalyticCategory`: AnalyticCategory → AnalyticCategory
- `hasRelatedDescriptiveCategory`: DescriptiveCategory → DescriptiveCategory
- `hasRelatedCode`: Code → Code

### Cyclical Relationships

- `isReformulated` + `toReformulation`: ResearchQuestion ↔ Reflexivity

---

## 📊 Property Statistics

- **Total Properties**: 22
- **Cross-Phase Properties**: 7
- **Self-Relations**: 3
- **Cyclical Properties**: 2 pairs

## 🔍 Quick Reference

### Find Classes by Phase

- **Phase 1**: ResearchProject, ResearchObjective, TheoreticalFramework, Researcher, FieldOfStudy, Method, Interview, ResearchQuestion
- **Phase 2**: Bibliography, SubjectObject, Record, InterviewTranscript, FieldNotes, EnrichedDocument
- **Phase 3**: Reflexivity, MethodOverSubjectObject, Interpretation
- **Phase 4**: Report, GroundedTheory, AnalyticCategory, DescriptiveCategory, Code, CoreCategory

### Find Properties by Type

- **Project Properties**: hasObjective, hasTheoreticalFramework, hasResearcher
- **Researcher Properties**: selects, appliesMethod
- **Data Properties**: refersTo, hasSubjectObjects, isApplied
- **Consensus Properties**: isReformulated, toReformulation, giveResponseTo, hasRelatedWork, hasMethodology, isInterpreted, hasCodes
- **Finding Properties**: isReported, hasElaboratedTheory, hasRelativeAnalyticCategory, hasElaboratedAnalyticCategory, hasRelatedDescriptiveCategory, hasElaboratedDescriptiveCategory, hasRelatedCode

---

## 📚 Related Pages

- **[Research Phases](Research-Phases)** - Phase-specific documentation
- **[Ontology Structure](Ontology-Structure)** - Architecture overview
- **[Querying the Ontology](Querying-the-Ontology)** - How to query classes and properties

---

*For usage examples, see the [Examples and Use Cases](Examples-and-Use-Cases) page.*

