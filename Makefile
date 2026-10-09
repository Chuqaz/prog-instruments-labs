install:
	pip install -r requirements.txt

run:
	py lab_1.py data.txt output.txt

typecheck:
	pyright

lint:
	ruff check .

test:
	pytest

format-check:
	ruff format --check .

fullcheck: lint format-check typecheck

format:
	ruff format .
	ruff check --fix .

precommit:
	pip install pre-commit
	pre-commit install
