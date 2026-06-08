SHELL := bash

MAKE_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: lint
lint:
	@jsonschema lint $(MAKE_DIR)/schemas \
		-x unnecessary_allof_ref_wrapper_modern \
		-x unnecessary_allof_wrapper \
		-x simple_properties_identifiers \
		-x top_level_examples

.PHONY: fmt
fmt:
	@jsonschema fmt $(MAKE_DIR)/schemas
