
.PHONY: environment remove-env install uninstall test # .PHONY is something we can add when our target dependencies are not files.

MODULE=mcsim
ENVIRONMENT=pyprofile

environment: remove-env
	conda create -n $(ENVIRONMENT) "python=3.10" -c conda-forge --yes
	conda install -c conda-forge notebook numpy matplotlib pytest-cov pandas --name $(ENVIRONMENT) --yes
	conda install -c conda-forge snakeviz --name $(ENVIRONMENT) --yes

remove-env:
	conda remove --name $(ENVIRONMENT) --all --yes

install: uninstall ## install the package to the active Python's site-packages
	pip install mcsim_python

dev-install: uninstall
	pip install -e mcsim_python

uninstall: ## uninstall the package
	pip uninstall --yes $(MODULE)

test:
	pytest -v
