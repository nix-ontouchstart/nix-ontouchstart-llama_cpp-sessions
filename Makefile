SOURCES := $(wildcard *.jsonl)
TARGETS := $(SOURCES:.jsonl=.md)

all: $(TARGETS)

%.md: %.jsonl
	echo "<https://nix-ontouchstart.github.io/nix-ontouchstart-llama_cpp-sessions/`basename $@ .md`>\n" >> README.md
	echo "# `basename $@ .md`" > $@
	cat $< | nix run github:nix-ontouchstart/nix-ontouchstart-jsonl2md/aarch64-darwin >> $@

