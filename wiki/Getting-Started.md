# Getting Started with Grounded Research Ontology

This guide will help you get started with the Grounded Research Ontology.

## 📋 Prerequisites

- **Protege** (version 5.5 or later recommended)
  - Download from: [Protege Website](https://protege.stanford.edu/)
- **Java** (version 11 or later)
- Basic understanding of OWL ontologies (helpful but not required)

## 🚀 Installation Steps

### 1. Download the Ontology

Clone or download the repository:

```bash
git clone https://github.com/aadorian/ground_ontology.git
cd ground_ontology
```

Or download the `grounded_research_ontology.owl` file directly.

### 2. Open in Protege

1. Launch Protege
2. Go to **File → Open**
3. Navigate to `grounded_research_ontology.owl`
4. Click **Open**

### 3. Configure Reasoner (Optional but Recommended)

1. Go to **Reasoner → Reasoner**
2. Select a reasoner (HermiT or Pellet recommended)
3. Click **Start reasoner**
4. Wait for reasoning to complete

## 📖 First Steps

### Explore the Ontology Structure

1. **Classes Tab**: View all classes organized by research phase
2. **Object Properties Tab**: See relationships between classes
3. **Individuals Tab**: Create instances of classes (if needed)
4. **DL Query Tab**: Run Description Logic queries

### View Class Hierarchy

1. Open the **Classes** tab
2. Expand the class hierarchy
3. Click on any class to see its properties and relationships

### Run Your First Query

1. Go to **Tools → SPARQL Query**
2. Try this simple query:

```sparql
PREFIX : <http://www.semanticweb.org/grounded_research_ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?project
WHERE {
    ?project rdf:type :ResearchProject .
}
```

## 🎯 Next Steps

- Read the **[Ontology Structure](Ontology-Structure)** page for an overview
- Explore **[Research Phases](Research-Phases)** to understand each phase
- Check out **[Querying the Ontology](Querying-the-Ontology)** for query examples
- Review **[Examples and Use Cases](Examples-and-Use-Cases)** for practical scenarios

## 📚 Documentation Files

- `PROTEGE_SETUP.md` - Detailed Protege setup instructions
- `ONTOLOGY_DOCUMENTATION.md` - Complete ontology documentation
- `README.md` - Repository overview and quick reference

## 🆘 Troubleshooting

### Protege Won't Open the File

- Ensure you have the latest version of Protege
- Check that Java is properly installed
- Verify the file is not corrupted

### Reasoner Errors

- Try a different reasoner (HermiT, Pellet, or FaCT++)
- Check that the ontology is consistent
- Review error messages in the reasoner log

### Query Not Working

- Verify namespace prefixes are correct
- Check that instances exist (some queries require data)
- Ensure the reasoner has been started

## 💬 Getting Help

- **Issues**: [Report a problem](https://github.com/aadorian/ground_ontology/issues)
- **Discussions**: [Ask questions](https://github.com/aadorian/ground_ontology/discussions)
- **Documentation**: See the [Classes and Properties](Classes-and-Properties) reference

---

*For more detailed setup instructions, see `PROTEGE_SETUP.md` in the repository.*

