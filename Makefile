.PHONY : clean


init:
	pip install -r requirements.txt

venv:
	python3 -m virtualenv virtualenv

test:
	( \
		python3 -m virtualenv ./virtualenv; \
		. ./virtualenv/bin/activate; \
		pip3 install -r requirements.txt; \
		python tests; \
		deactivate; \
	)

lint:
	pyflakes update_asg/*.py
	pyflakes tests/*.py
	pylint update_asg/*.py
	pylint tests/*.py

coverage:
	coverage run -a $SOURCEFOLDER/__init__.py
	coverage run -a $SOURCEFOLDER/main.py
	coverage run -a $SOURCEFOLDER/lambda_function.py

build:
	( \
		python3 -m virtualenv ./virtualenv; \
		. ./virtualenv/bin/activate; \
		pip3 install -r requirements.txt; \
		python update_asg/main.py; \
		deactivate; \
	)

clean:
	-rm -fr Reports
	-rm -fr virtualenv
	-rm CloudFormation.json
	-rm .coverage