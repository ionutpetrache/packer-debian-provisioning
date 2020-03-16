.PHONY: clean

clean:
	@echo Removing cache and output folder
	rm -fr packer_cache
	rm -fr output-virtualbox-iso

provision:
	@echo Start provisioning system with packer and debian preseed
	packer build packer-virtualbox-template.json

all: clean provision
