PREFIX = /usr/local
BIN = $(PREFIX)/bin

build: spinner
spinner: main.c Makefile
	cc -w main.c -o $@
	strip -SX $@
install: build
	mkdir -p "$(BIN)"
	install -m 0711 spinner "$(BIN)"
test: build
	./spinner                         ; test $$? = 1  # no argument
	./spinner 12345                   ; test $$? = 1  # wrong argument
	sh -c 'sleep 1 & ./spinner $$!'    ; test $$? = 0  # good
clean:
	rm spinner 2>/dev/null ; true
