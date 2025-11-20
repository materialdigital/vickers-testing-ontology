
![Build Status](https://github.com/HosseinBeygiNasrabadi/Vickers-testing-application-ontology/actions/workflows/qc.yml/badge.svg)
# Vickers Test Ontology (VTO)

Vickers Test Ontology (VTO) has developed for representing the Vickers testing process, testing equipment requirements, test pieces charactristics, and related testing parameters and their measurement procedure according to DIN EN ISO 6507-1 standard.

## Repository Structure

This repository was developed and maintained using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).
### Top-level directories
* **.github/oorkflows/:** GitHub configuration files, including CI workflows and templates.
* **src/:** Main development folder generated and managed through ODK.
  * **ontology/vto-edit.owl:** – Primary editable ontology file used during development (ontology editors' version).

### Ontology versions
* **vto-full.owl/ttl:** Complete ontology with all imports and full axiomatization.
* **vto-base.owl/ttl:** Core entities without extended imports.
* **vto-simple.owl/ttl:** Simplified version with basic subclass and existential axioms.
* **vto.owl/ttl:** Main ontology file contains the full version.

### Other files
* README.md, LICENSE.txt, CONTRIBUTING.md – Project overview, license, and contribution guidelines.
* mkdocs.yaml – Configuration for building the documentation site.


## Documentation
* **[Widoco List of Classes and Properties](https://materialdigital.github.io/vickers-testing-ontology/)**
* **[VTO in MatPortal](https://matportal.org/ontologies/VTO)**
* **[VTO in Platform MaterialDigital DataPortal](https://dataportal.material-digital.de/dataset/vickers-testing-ontology-vto)**
* **[Publications related to VTO](https://www.scientific.net/AST.149.33)**


## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/materialdigital/vickers-testing-ontology/issues) to request new terms/classes or report errors or specific concerns related to the ontology.
