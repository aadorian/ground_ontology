# Examples and Use Cases

Practical examples and use cases for the Grounded Research Ontology.

## 🎯 Common Use Cases

### 1. Modeling a Research Project

**Scenario**: You want to model a qualitative research project on educational technology.

**Steps**:

1. **Create Research Project**
   - Create instance: `EducationalTechProject`
   - Type: `ResearchProject`

2. **Add Objective**
   - Create instance: `StudyEdTechImpact`
   - Type: `ResearchObjective`
   - Link: `EducationalTechProject` → `hasObjective` → `StudyEdTechImpact`

3. **Add Researcher**
   - Create instance: `DrSmith`
   - Type: `Researcher`
   - Link: `EducationalTechProject` → `hasResearcher` → `DrSmith`

4. **Add Method**
   - Create instance: `SemiStructuredInterview`
   - Type: `Interview`
   - Link: `DrSmith` → `appliesMethod` → `SemiStructuredInterview`

5. **Add Field of Study**
   - Create instance: `EducationalTechnology`
   - Type: `FieldOfStudy`
   - Link: `DrSmith` → `selects` → `EducationalTechnology`

### 2. Tracking Data Collection

**Scenario**: You want to track interview transcripts and field notes.

**Steps**:

1. **Create Subject Object**
   - Create instance: `HighSchoolTeachers`
   - Type: `SubjectObject`
   - Link: `EducationalTechnology` → `hasSubjectObjectApplication` → `HighSchoolTeachers`

2. **Create Records**
   - Create instance: `Interview1_Transcript`
   - Type: `InterviewTranscript`
   - Link: `HighSchoolTeachers` → `hasSubjectObjects` → `Interview1_Transcript`
   
   - Create instance: `FieldNotes_Day1`
   - Type: `FieldNotes`
   - Link: `HighSchoolTeachers` → `hasSubjectObjects` → `FieldNotes_Day1`

### 3. Documenting Interpretation Process

**Scenario**: You want to document how records are interpreted into codes.

**Steps**:

1. **Create Interpretation**
   - Create instance: `Interpretation_Interview1`
   - Type: `Interpretation`
   - Link: `Interview1_Transcript` → `isInterpreted` → `Interpretation_Interview1`

2. **Create Codes**
   - Create instance: `Code_TechnologyAdoption`
   - Type: `Code`
   - Link: `Interpretation_Interview1` → `hasCodes` → `Code_TechnologyAdoption`
   
   - Create instance: `Code_TeacherResistance`
   - Type: `Code`
   - Link: `Interpretation_Interview1` → `hasCodes` → `Code_TeacherResistance`

### 4. Building Theory Hierarchy

**Scenario**: You want to build a theory from codes through categories.

**Steps**:

1. **Create Grounded Theory**
   - Create instance: `Theory_EdTechAdoption`
   - Type: `GroundedTheory`

2. **Create Analytic Category**
   - Create instance: `Category_AdoptionBarriers`
   - Type: `AnalyticCategory`
   - Link: `Theory_EdTechAdoption` → `hasElaboratedTheory` → `Category_AdoptionBarriers`

3. **Create Descriptive Category**
   - Create instance: `DescCategory_ResistanceFactors`
   - Type: `DescriptiveCategory`
   - Link: `Category_AdoptionBarriers` → `hasElaboratedAnalyticCategory` → `DescCategory_ResistanceFactors`

4. **Link to Codes**
   - Link: `DescCategory_ResistanceFactors` → `hasElaboratedDescriptiveCategory` → `Code_TeacherResistance`

### 5. Documenting Reformulation Cycle

**Scenario**: You want to document how research questions evolve.

**Steps**:

1. **Create Research Question**
   - Create instance: `RQ1_Initial`
   - Type: `ResearchQuestion`
   - Link: `StudyEdTechImpact` → `poses` → `RQ1_Initial`

2. **Create Reflexivity**
   - Create instance: `Reflexivity_Round1`
   - Type: `Reflexivity`
   - Link: `RQ1_Initial` → `isReformulated` → `Reflexivity_Round1`

3. **Create Reformulated Question**
   - Create instance: `RQ1_Revised`
   - Type: `ResearchQuestion`
   - Link: `Reflexivity_Round1` → `toReformulation` → `RQ1_Revised`

---

## 📊 Query Examples

### Find All Research Projects

**SPARQL:**
```sparql
SELECT ?project
WHERE {
    ?project rdf:type :ResearchProject .
}
```

**DL:**
```
ResearchProject
```

### Find Projects with Complete Information

**SPARQL:**
```sparql
SELECT ?project ?objective ?researcher
WHERE {
    ?project rdf:type :ResearchProject .
    ?project :hasObjective ?objective .
    ?project :hasResearcher ?researcher .
}
```

**DL:**
```
ResearchProject and 
  (hasObjective some ResearchObjective) and 
  (hasResearcher some Researcher)
```

### Find Records That Are Interpreted

**SPARQL:**
```sparql
SELECT ?record ?interpretation
WHERE {
    ?record rdf:type/rdfs:subClassOf* :Record .
    ?record :isInterpreted ?interpretation .
}
```

**DL:**
```
isInterpreted some Interpretation
```

### Find Complete Theory Development

**SPARQL:**
```sparql
SELECT ?groundedTheory ?analyticCategory ?descriptiveCategory ?code
WHERE {
    ?groundedTheory rdf:type :GroundedTheory .
    ?groundedTheory :hasElaboratedTheory ?analyticCategory .
    ?analyticCategory :hasElaboratedAnalyticCategory ?descriptiveCategory .
    ?descriptiveCategory :hasElaboratedDescriptiveCategory ?code .
}
```

**DL:**
```
hasElaboratedTheory some (hasElaboratedAnalyticCategory some (hasElaboratedDescriptiveCategory some Code))
```

---

## 🔄 Workflow Examples

### Complete Research Workflow

```
1. Project Formulation
   ResearchProject → hasObjective → ResearchObjective
   ResearchObjective → poses → ResearchQuestion
   ResearchProject → hasResearcher → Researcher
   Researcher → appliesMethod → Method
   Researcher → selects → FieldOfStudy

2. Data Collection
   FieldOfStudy → hasSubjectObjectApplication → SubjectObject
   SubjectObject → hasSubjectObjects → Record

3. Consensus
   Record → isInterpreted → Interpretation
   Interpretation → hasCodes → Code
   ResearchQuestion → isReformulated → Reflexivity

4. Findings
   Reflexivity → giveResponseTo → Report
   Report → isReported → GroundedTheory
   GroundedTheory → hasElaboratedTheory → AnalyticCategory
   AnalyticCategory → hasElaboratedAnalyticCategory → DescriptiveCategory
   DescriptiveCategory → hasElaboratedDescriptiveCategory → Code
```

### Iterative Research Cycle

```
ResearchQuestion (Initial)
  ↓ isReformulated
Reflexivity
  ↓ toReformulation
ResearchQuestion (Revised)
  ↓ isReformulated
Reflexivity (Round 2)
  ↓ toReformulation
ResearchQuestion (Final)
```

---

## 🎓 Academic Use Cases

### Use Case 1: Doctoral Dissertation

Model a complete doctoral research project from formulation through findings, including:
- Multiple research questions
- Various data collection methods
- Iterative interpretation cycles
- Theory development

### Use Case 2: Collaborative Research

Model a research project with multiple researchers:
- Different researchers applying different methods
- Shared data collection
- Collaborative interpretation
- Joint theory development

### Use Case 3: Longitudinal Study

Model a research project spanning multiple phases:
- Initial research questions
- Multiple data collection rounds
- Progressive theory refinement
- Final comprehensive report

---

## 🔍 Validation Examples

### Check Project Completeness

**Query**: Find projects missing essential components

**SPARQL:**
```sparql
SELECT ?project
WHERE {
    ?project rdf:type :ResearchProject .
    FILTER NOT EXISTS {
        ?project :hasObjective ?objective .
    }
}
```

**DL:**
```
ResearchProject and not (hasObjective some ResearchObjective)
```

### Find Uninterpreted Records

**SPARQL:**
```sparql
SELECT ?record
WHERE {
    ?record rdf:type/rdfs:subClassOf* :Record .
    FILTER NOT EXISTS {
        ?record :isInterpreted ?interpretation .
    }
}
```

**DL:**
```
Record and not (isInterpreted some Interpretation)
```

---

## 📚 Related Pages

- **[Querying the Ontology](Querying-the-Ontology)** - Query syntax and examples
- **[Research Phases](Research-Phases)** - Phase-specific examples
- **[Classes and Properties](Classes-and-Properties)** - Reference for modeling

---

*For more examples, see the query directories in the repository: `sparql/`, `dl-queries/`, and `definition-queries/`.*

