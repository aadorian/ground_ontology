---
name: SWRL Rules Request
about: Request SWRL (Semantic Web Rule Language) rules for the ontology
title: "[SWRL]: Add SWRL rules for automated reasoning"
labels: ["enhancement", "reasoning", "needs-triage"]
---

## Problem Statement

The current ontology uses OWL axioms to define classes, properties, and relationships. However, there are complex logical relationships and inference patterns that would benefit from SWRL (Semantic Web Rule Language) rules to enable more powerful deductive reasoning.

SWRL rules would allow us to:
- Automatically infer new knowledge from existing facts
- Express complex "if-then" relationships that are difficult to capture with OWL alone
- Enable automated reasoning about research workflows and relationships
- Support validation and consistency checking through rule-based inference

## Proposed Solution

Add SWRL rules to the Grounded Research Ontology that capture important inference patterns across the four research phases:

### Example SWRL Rules for Consideration

#### 1. Research Project Completeness Rule
**Rule:** If a ResearchProject has an objective, a theoretical framework, and at least one researcher, then it is a "CompleteResearchProject".

```
ResearchProject(?p) ∧ hasObjective(?p, ?o) ∧ hasTheoreticalFramework(?p, ?f) ∧ hasResearcher(?p, ?r) 
→ CompleteResearchProject(?p)
```

#### 2. Data Interpretation Chain Rule
**Rule:** If a Record is interpreted and the Interpretation has codes, then the Record has been "ProcessedToCodes".

```
Record(?r) ∧ isInterpreted(?r, ?i) ∧ Interpretation(?i) ∧ hasCodes(?i, ?c) ∧ Code(?c) 
→ ProcessedToCodes(?r)
```

#### 3. Research Question Reformulation Rule
**Rule:** If a ResearchQuestion is reformulated through Reflexivity and leads to a new ResearchQuestion, then there is a "ReformulationCycle".

```
ResearchQuestion(?q1) ∧ isReformulated(?q1, ?ref) ∧ Reflexivity(?ref) ∧ toReformulation(?ref, ?q2) ∧ ResearchQuestion(?q2) 
→ ReformulationCycle(?q1, ?q2)
```

#### 4. Theory Development Path Rule
**Rule:** If a GroundedTheory elaborates to AnalyticCategory, which elaborates to DescriptiveCategory, which elaborates to Code, then there is a "CompleteTheoryHierarchy".

```
GroundedTheory(?gt) ∧ hasElaboratedTheory(?gt, ?ac) ∧ AnalyticCategory(?ac) ∧ 
hasElaboratedAnalyticCategory(?ac, ?dc) ∧ DescriptiveCategory(?dc) ∧ 
hasElaboratedDescriptiveCategory(?dc, ?c) ∧ Code(?c) 
→ CompleteTheoryHierarchy(?gt)
```

#### 5. Researcher Activity Rule
**Rule:** If a Researcher applies a Method and selects a FieldOfStudy, then the Researcher is "Active".

```
Researcher(?res) ∧ appliesMethod(?res, ?m) ∧ Method(?m) ∧ selects(?res, ?fos) ∧ FieldOfStudy(?fos) 
→ ActiveResearcher(?res)
```

#### 6. Cross-Phase Validation Rule
**Rule:** If a ResearchProject has a Researcher who selects a FieldOfStudy with SubjectObjects that have Records, then the project has "DataCollectionPhase".

```
ResearchProject(?p) ∧ hasResearcher(?p, ?res) ∧ Researcher(?res) ∧ 
selects(?res, ?fos) ∧ FieldOfStudy(?fos) ∧ hasSubjectObjectApplication(?fos, ?so) ∧ 
SubjectObject(?so) ∧ hasSubjectObjects(?so, ?r) ∧ Record(?r) 
→ HasDataCollectionPhase(?p)
```

## Use Case

As a researcher using this ontology, I want SWRL rules to:
- Automatically classify research projects based on their completeness
- Infer relationships between research phases
- Validate that research workflows follow expected patterns
- Generate new knowledge from existing ontology facts
- Support automated quality checks on research data

## Feature Type

- [x] New ontology class or property
- [ ] Documentation improvement
- [ ] Tooling/automation
- [ ] User interface enhancement
- [ ] Performance improvement
- [x] Other: SWRL rules for reasoning

## Implementation Ideas

1. **Create a SWRL rules file** (e.g., `grounded_research_ontology_rules.swrl`) containing the rules
2. **Integrate rules into Protege** using the SWRLTab plugin
3. **Test rules** with a reasoner (HermiT, Pellet) to ensure they work correctly
4. **Document rules** explaining what each rule infers and when it applies
5. **Provide examples** of how the rules would work with sample data

## Additional Context

### What is SWRL?

**SWRL** stands for **Semantic Web Rule Language**. It is a proposed language that combines **OWL (Web Ontology Language)** with a subset of the **Rule Markup Language (RuleML)** to create powerful rules for inferring new knowledge.

### Core Concept

SWRL rules are "if-then" statements that allow for more expressive knowledge representation and deductive reasoning than OWL can provide on its own.

**General Form:**
```
Body → Head
```

**Intended Meaning:** *Whenever the conditions specified in the **Body** are true, the conditions specified in the **Head** must also be true.*

### Components of SWRL Rules

| Component | Description | Example |
|-----------|-------------|---------|
| **Class Atom** | An individual is a member of a specific OWL class | `Person(?x)` |
| **Individual Property Atom** | A relationship between two individuals (Object Property) | `hasParent(?x, ?y)` |
| **Data Valued Property Atom** | A relationship between an individual and a data value (Data Property) | `hasAge(?x, ?age)` |
| **Built-in Atom** | Allows calculations or comparisons using standard functions | `swrlb:greaterThan(?age, 17)` |

### Benefits for This Ontology

1. **Expressiveness:** Capture complex research workflow patterns that are difficult to express with OWL alone
2. **Automated Reasoning:** Enable reasoners to automatically infer new facts about research projects
3. **Validation:** Use rules to check consistency and completeness of research data
4. **Knowledge Discovery:** Automatically identify patterns and relationships in research workflows

## Examples

### Example 1: Research Project Completeness
If a project has all essential components (objective, framework, researcher), automatically classify it as complete.

### Example 2: Data Processing Chain
If records are interpreted and generate codes, automatically mark them as processed through the consensus phase.

### Example 3: Theory Development
If a grounded theory has a complete hierarchy from analytic categories to codes, automatically identify it as fully developed.

## Checklist

- [x] I have searched existing issues to ensure this feature has not already been requested
- [x] I have provided all the information requested in this template
- [ ] I am willing to help implement this feature (if applicable)

