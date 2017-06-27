WCF_FILES = files_wcf/js/Bastelstu.be/bottle.js

all: be.bastelstu.bottle.tar

be.bastelstu.bottle.tar: files_wcf.tar *.xml
	tar cvf be.bastelstu.bottle.tar --numeric-owner --exclude-vcs -- files_wcf.tar *.xml

files_wcf.tar: $(WCF_FILES)
	tar cvf files_wcf.tar --numeric-owner --exclude-vcs --dereference --transform='s,files_wcf/,,' -- $(WCF_FILES)

clean:
	-rm -f files_wcf.tar

distclean: clean
	-rm -f be.bastelstu.bottle.tar

.PHONY: distclean clean
