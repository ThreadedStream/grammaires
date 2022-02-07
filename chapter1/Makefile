FLEX_TOOL=flex
BISON_TOOL=bison
COMPILER=gcc
COMPILER_FLAGS=-m64 -lfl

grammaire: grammaire.l grammaire.y
	$(BISON_TOOL) -d grammaire.y
	$(FLEX_TOOL) grammaire.l
	gcc -o $@ grammaire.tab.c lex.yy.c -lfl

#%: %.c
#	$(COMPILER) $(COMPILER_FLAGS) $@.c -o $@

clean:
	rm -rf *.c *.h | find . -type f -executable | xargs rm -rf
