test:
	stog --local --tmpl templates src

build:
	stog --tmpl templates src

deploy: build
	cd stog-output; tar cvf site.tar *; mv site.tar ..

clean: 
	rm -R -f stog-output
