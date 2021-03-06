.PHONY: clean

clean:
	@echo Removing cache and output folder
	rm -fr packer_cache
	rm -fr output

provision:
	@echo Start provisioning system with packer and debian preseed
	packer build templates/packer.json

all: clean provision
