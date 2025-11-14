# GitHub Wiki for Grounded Research Ontology

This directory contains the wiki pages for the GitHub Wiki of the Grounded Research Ontology.

## 📚 Wiki Pages

- **Home.md** - Main wiki page with overview and navigation
- **Getting-Started.md** - Installation and setup guide
- **Ontology-Structure.md** - Architecture and structure overview
- **Research-Phases.md** - Detailed documentation of each research phase
- **Classes-and-Properties.md** - Complete reference of all classes and properties
- **Querying-the-Ontology.md** - Guide to SPARQL, DL, and definition queries
- **Examples-and-Use-Cases.md** - Practical examples and use cases
- **Contributing.md** - Guidelines for contributing to the ontology
- **_Sidebar.md** - Wiki sidebar navigation

## 🚀 How to Use

### Option 1: GitHub Web Interface

1. Go to your repository on GitHub
2. Click on the **Wiki** tab
3. Click **Create the first page** or **New Page**
4. Copy content from the corresponding `.md` file
5. Paste and save

### Option 2: Clone Wiki Repository

GitHub Wikis are separate git repositories. You can clone and push to them:

```bash
# Clone the wiki repository
git clone https://github.com/aadorian/ground_ontology.wiki.git

# Copy wiki files
cp wiki/*.md ground_ontology.wiki/

# Commit and push
cd ground_ontology.wiki
git add .
git commit -m "docs: add wiki pages"
git push origin master
```

### Option 3: Use GitHub CLI

```bash
# Create pages using GitHub CLI
gh wiki create Home --body-file wiki/Home.md
gh wiki create Getting-Started --body-file wiki/Getting-Started.md
# ... etc
```

## 📝 Notes

- GitHub Wikis use Markdown format
- The `_Sidebar.md` file creates the wiki navigation sidebar
- Wiki pages support internal links using `[Page Name](Page-Name)` format
- Images can be uploaded to the wiki and referenced

## 🔗 Related

- Main repository: [ground_ontology](https://github.com/aadorian/ground_ontology)
- Documentation: See `ONTOLOGY_DOCUMENTATION.md` in the main repository

