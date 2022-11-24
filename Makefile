INSTALL_DIR=/usr/share/man/man3
INSTALL_EVIDENCE=makeScripts/installedPages.txt

install:
ifeq ("","$(wildcard $(INSTALL_EVIDENCE))")
	git pull
	rm -rf "Zipped Pages"
	sh ./create_zip.sh
	sh ./makeScripts/prepareMakefileRemove.sh $(INSTALL_EVIDENCE)
	mkdir -p $(INSTALL_DIR)
	mv "./Zipped Pages/"* $(INSTALL_DIR)
else
	@echo "Already installed, please uninstall first"
endif
	
uninstall:
ifneq ("","$(wildcard $(INSTALL_EVIDENCE))")
	sh ./makeScripts/doMakefileRemove.sh $(INSTALL_EVIDENCE) $(INSTALL_DIR) 
	rmdir $(INSTALL_DIR)
else
	@echo "Not installed, please install first"
endif
