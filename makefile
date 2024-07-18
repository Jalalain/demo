install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C app

test:
	pytest -vv --cov-report term-missing --cov=app test_*.py

all:
	install lint test