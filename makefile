all: lint

lint:
	npx prettier --check .

format:
	npx prettier --write .
