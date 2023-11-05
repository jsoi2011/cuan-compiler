run: clex
	./clex
vlex: lex.yy.c
	gcc -o clex lex.yy.c
lex.yy.c: clex.l
	flex clex.l