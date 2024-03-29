2048: lex.yy.c parser.tab.c board.o tile_name.o
	gcc -g lex.yy.c parser.tab.c board.o tile_name.o -o 2048

lex.yy.c: parser.tab.c lexer.l
	lex lexer.l

parser.tab.c: parser.y
	bison -d parser.y

board.o: board.c
	gcc -c board.c -o board.o

tile_name.o: tile_name.c
	gcc -c tile_name.c -o tile_name.o

clean: 
	rm -rf tile_name.o board.o lex.yy.c y.tab.c y.tab.h parser.tab.c parser.tab.h 2048

run:
	./2048