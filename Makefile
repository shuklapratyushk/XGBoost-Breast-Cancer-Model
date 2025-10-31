.PHONY: env install test notebook train

install:
	pip install -r requirements.txt

env:
	python -m venv env
	./env/bin/pip install --upgrade pip setuptools wheel

notebook:
	jupyter lab

train:
	python -m src.models.train

test:
	pytest -q