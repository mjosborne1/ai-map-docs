.PHONY: all build serve install clean

all: build

install:
	pip install mkdocs-material

build:
	mkdocs build

serve:
	mkdocs serve

clean:
	rm -rf site
