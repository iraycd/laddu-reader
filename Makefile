APP = laddu.nw

run: build
ifeq ($(shell uname), Linux)
	`which nw` $(APP)
else
	open -n -a node-webkit $(APP)
endif

build:
	@rm -f $(APP)
	zip -r $(APP) images/ locale/ static/ index.html package.json


.PHONY: clean distclean run build