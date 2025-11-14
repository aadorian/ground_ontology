# Ontology Structure

The Grounded Research Ontology is organized into four main research phases, each containing classes and properties that model different aspects of qualitative research methodology.

## 🏗️ Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    Research Project                          │
└─────────────────────────────────────────────────────────────┘
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
        ▼                   ▼                   ▼
┌──────────────┐   ┌──────────────┐   ┌──────────────┐
│  Phase 1:    │   │  Phase 2:    │   │  Phase 3:    │
│  Project     │   │  Data        │   │  Consensus   │
│  Formulation │   │  Collection  │   │              │
└──────────────┘   └──────────────┘   └──────────────┘
        │                   │                   │
        └───────────────────┼───────────────────┘
                            │
                            ▼
                   ┌──────────────┐
                   │  Phase 4:    │
                   │  Findings    │
                   └──────────────┘
```

## 📊 Ontology Components

### Classes (25 total)

- **Phase 1 - Project Formulation**: 8 classes
- **Phase 2 - Data Collection**: 6 classes
- **Phase 3 - Consensus**: 3 classes
- **Phase 4 - Findings**: 6 classes
- **Additional**: 2 classes

### Object Properties (22 total)

Properties connect classes across and within phases, enabling:
- Cross-phase relationships
- Hierarchical structures
- Cyclical processes

## 🔄 Key Relationships

### Cyclical Relationships

The ontology supports iterative research processes:

1. **Research Question Reformulation**
   - `ResearchQuestion` → `isReformulated` → `Reflexivity` → `toReformulation` → `ResearchQuestion`

2. **Data to Interpretation**
   - `Record` → `isInterpreted` → `Interpretation`

3. **Interpretation to Codes**
   - `Interpretation` → `hasCodes` → `Code`

### Hierarchical Structures

**Finding Phase Hierarchy:**
```
GroundedTheory
  └── AnalyticCategory (with self-relations)
      └── DescriptiveCategory (with self-relations)
          └── Code (with self-relations)
```

## 🌐 Namespace

- **Base URI**: `http://www.semanticweb.org/grounded_research_ontology#`
- **Prefix**: `:` (in Protege)

## 📐 Design Principles

1. **Modularity**: Each phase is self-contained but interconnected
2. **Extensibility**: Easy to add new classes and properties
3. **Expressiveness**: Captures complex research workflows
4. **Reusability**: Classes can be used across different research projects

## 🔗 Cross-Phase Connections

The ontology enables connections between all phases:

- **Formulation → Collection**: Researchers select fields with subject objects
- **Collection → Consensus**: Records are interpreted
- **Consensus → Findings**: Interpretations generate codes
- **Findings → Formulation**: Reflexivity connects reports to questions

## 📖 Related Pages

- **[Research Phases](Research-Phases)** - Detailed phase documentation
- **[Classes and Properties](Classes-and-Properties)** - Complete reference
- **[Examples and Use Cases](Examples-and-Use-Cases)** - Practical examples

---

*For detailed class and property information, see the [Classes and Properties](Classes-and-Properties) page.*

