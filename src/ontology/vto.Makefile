## Default module type (slme)
$(IMPORTDIR)/mwo_import.owl: $(MIRRORDIR)/mwo.owl $(IMPORTDIR)/mwo_terms.txt \
			   $(IMPORTSEED) | all_robot_plugins
	$(ROBOT) annotate --input $< --remove-annotations \
		 odk:normalize --add-source true \
		 extract --term-file $(IMPORTDIR)/mwo_terms.txt \
		         --force true --copy-ontology-annotations true \
		         --individuals include \
		         --intermediates minimal \
		         --method SUBSET \
		 remove $(foreach p, $(ANNOTATION_PROPERTIES), --term $(p)) \
		        --term-file $(IMPORTDIR)/mwo_terms.txt  \
		        --select complement --select annotation-properties \
		 odk:normalize --base-iri https://w3id.org/pmd/ao \
		               --subset-decls true --synonym-decls true \
		 repair --merge-axiom-annotations true \
		 $(ANNOTATE_CONVERT_FILE)


#############################################################################
# lets add some additional annotations to the release artefacts
#############################################################################

CITATION="'Hossein Beygi Nasrabadi, ...... TODO. NFDIcore Ontology. Revision: v$(VERSION). Retrieved from: https://nfdi.fiz-karlsruhe.de/ontology/$(VERSION)'"

ALL_ANNOTATIONS=--ontology-iri https://w3id.org/pmd/vto/ -V https://w3id.org/pmd/vto/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
	--link-annotation owl:priorVersion https://w3id.org/pmd/vto/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../vto.owl $(ALL_ANNOTATIONS) --output ../../vto.owl && \
	$(ROBOT) annotate --input ../../vto.ttl $(ALL_ANNOTATIONS) --output ../../vto.ttl && \
	$(ROBOT) annotate --input ../../vto-simple.owl $(ALL_ANNOTATIONS) --output ../../vto-simple.owl && \
	$(ROBOT) annotate --input ../../vto-simple.ttl $(ALL_ANNOTATIONS) --output ../../vto-simple.ttl && \
	$(ROBOT) annotate --input ../../vto-full.owl $(ALL_ANNOTATIONS) --output ../../vto-full.owl && \
	$(ROBOT) annotate --input ../../vto-full.ttl $(ALL_ANNOTATIONS) --output ../../vto-full.ttl && \
	$(ROBOT) annotate --input ../../vto-base.owl $(ALL_ANNOTATIONS) --output ../../vto-base.owl && \
	$(ROBOT) annotate --input ../../vto-base.ttl $(ALL_ANNOTATIONS) --output ../../vto-base.ttl 
	