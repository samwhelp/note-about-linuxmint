default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make download'
	@echo
	@echo '	$$ make boot'
	@echo
	@echo '	$$ make mount'
	@echo
	@echo '	$$ make unmount'
	@echo
	@echo '	$$ make initrd-extract'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help




prepare:
	./prepare.sh
.PHONY: prepare


download:
	./download.sh
.PHONY: download


boot:
	./boot.sh
.PHONY: boot


mount:
	./mount.sh
.PHONY: mount


unmount:
	./unmount.sh
.PHONY: unmount


initrd-extract:
	./initrd-extract.sh
.PHONY: initrd-extract


clean:
	./clean.sh
.PHONY: clean
