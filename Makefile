SHELL := bash

.PHONY: lint
lint:
	@jsonschema lint schemas \
		-x unnecessary_allof_ref_wrapper_modern \
		-x unnecessary_allof_wrapper \
		-x simple_properties_identifiers \
		-x top_level_examples

.PHONY: fmt
fmt:
	@jsonschema fmt schemas
