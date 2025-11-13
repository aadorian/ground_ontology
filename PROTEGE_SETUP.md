# Protege Setup Instructions

## Opening the Ontology in Protege

1. **Launch Protege**
   - Open Protege application on your system

2. **Open the OWL File**
   - Go to `File` → `Open...`
   - Navigate to `grounded_research_ontology.owl`
   - Click `Open`

3. **Explore the Ontology**

   **Classes Tab:**
   - View all classes organized by phase:
     - Project Formulation classes
     - Data Collection classes
     - Consensus classes
     - Finding classes
   - Note the subclass relationships (e.g., Interview is a subclass of Method)

   **Object Properties Tab:**
   - View all 22 object properties
   - Check domains and ranges for each property
   - See how properties connect different phases

   **Individuals Tab:**
   - Create instances of classes to model specific research projects
   - Add property assertions to connect individuals

4. **Use the Reasoner**
   - Go to `Reasoner` menu
   - Select a reasoner (e.g., HermiT, Pellet, or FaCT++)
   - Click `Start reasoner`
   - Check for inconsistencies or inferred relationships

5. **Visualization**
   - Use the `OntoGraf` tab to visualize class relationships
   - Use the `OWLViz` tab for hierarchical views

## Project Structure

```
ground_ontology/
├── grounded_research_ontology.owl    # Main OWL ontology file
├── ONTOLOGY_DOCUMENTATION.md         # Detailed documentation
├── PROTEGE_SETUP.md                  # This file
├── README.md                         # Project overview
└── .gitmessage                       # Commit message template
```

## Key Features

- **4 Main Phases**: Project Formulation, Data Collection, Consensus, Finding
- **25 Classes**: Including subclasses for different record types and methods
- **22 Object Properties**: Defining relationships between classes
- **Cyclical Relationships**: Supports iterative research processes
- **Hierarchical Structure**: From Grounded Theory to Codes

## Next Steps

1. Add data properties if needed (e.g., dates, descriptions)
2. Create individuals for specific research projects
3. Add annotations (comments, labels in other languages)
4. Extend with additional research methods or record types
5. Use SPARQL queries to explore the ontology

