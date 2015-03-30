SAUCE_CONNECT_JAR = $(wildcard ext/*.jar)

.PHONY: install
install:
	@mkdir -p ext
	$(if $(SAUCE_CONNECT_JAR),,cd ext; curl -O $(npm_package_sauce_connect_url); tar -xvf Sauce-Connect-latest.zip)

