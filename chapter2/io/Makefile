FLEX_TOOL=flex

BISON_TOOL=bison
COMPILER=gcc
COMPILER_FLAGS=-m64 -lfl
TARGET=flexio

#$(TARGET): $(TARGET).l $(TARGET).y
#	$(BISON_TOOL) -d $(TARGET).y
#	$(FLEX_TOOL) $(TARGET).l
#	gcc -o $@ $(TARGET).tab.c lex.yy.c -lfl

$(TARGET).c: $(TARGET).l
	$(FLEX_TOOL) $(TARGET).l 

$(TARGET): lex.yy.c	
	gcc -o $@ lex.yy.c -lfl

clean:
	rm -rf *.c *.h | find . -type f -executable | xargs rm -rf
