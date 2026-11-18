GOOSE ?= goose
SOURCE := src/main.goose
PROGRAM := src/main

.PHONY: all build run clean

all: build

build: $(PROGRAM)

$(PROGRAM): $(SOURCE)
	$(GOOSE) build $(SOURCE)

run: build
	./$(PROGRAM)

clean:
	rm -f $(PROGRAM)
