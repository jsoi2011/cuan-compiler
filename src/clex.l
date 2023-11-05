%{

#include <tokens.hpp>
#include <cstdio>
#include <cstring>

void begin();
void error(string msg,int line);

int pcline=1;

%}

whitespace	[ \t\a\r]+					//空白
comments	\/\/.*						//注释

identifier	[a-zA-Z_]+[a-zA-Z0-9_]*		//标识符

decimal		\-?([1-9]+[0-9]*)|0			//整数
float		\-?[0-9]+\.[0-9]+			//浮点数
string		\"[^\"\n]*\"				//字符串
untilstr	\"[^\"\n]*					//未完字符串

operator	[\+\*\-\/%=,;!<>\(\){}]		//符号
macro		@inc [^\n]*					//库、宏

%%

[\n]			{pcline++;			}
{whitespace}	{					}
{comments}		{					}

"func"			{return FUNC;		}
"var"			{return VARI;		}
"if"			{return IF;			}
"else"			{return ELSE;		}
"elsif"			{return ELSI;		}
"while"			{return WHIL;		}
"for"			{return FOR;		}
"return"		{return RETU;		}
"array"			{return	ARRA;		}
"true"			{return TRUE;		}
"flase"			{return FLAS;		}


{identifier}	{return IDEN;		}

{decimal}		{return DECI;		}
{float}			{return FLOA;		}
{string}		{return STRI;		}

{operator}		{return yytext[0];	}
{macro}			{return MACR;		}

<<EOF>>			{return 0;			}

{untilstr}		{error("Unterminated string constant",pcline);	}
.				{error("Unkown character",pcline);				}

%%

int main(int argc,char* argv[]){
	int token;
	begin();
	 while(token=yylex()){
        puts(yytext);
        printt(token);
    }
	return 0;
}

void begin(){
	printf("Value\t\t\tTYPE\n");
	printf("-----------------------");
}

void error(string msg,int line){
	printf("Error:line%d,%s\n",line,msg);
}

int yywrap(){return 1;}