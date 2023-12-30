GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
BINARY_NAME=bin/monkey

build:
	clear
	$(GOBUILD) -o $(BINARY_NAME) -v 
test: 
	clear
	$(GOTEST) -v ./...
clean: 
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
run:
	$(GOBUILD) -o $(BINARY_NAME) -v 
	clear
	./$(BINARY_NAME)

