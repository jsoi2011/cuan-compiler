#ifndef TOKENS_H
#define TOKENS_H

enum{
	FUNC=0,VARI,IF,ELSE,ELSI,WHIL,FOR,RETU,ARRA,
	TRUE,FLAS,IDEN,DECI,FLOA,STRI,MACR
}type;

void printt(int token){
	char* tokens[]={
		"FUNC","VARI","IF","ELSE","ELSI","WHIL","FOR","RETU",
		"ARRA","TRUE","FLAS","IDEN","DECI","FLOA","STRI","MACR"
	};
	if(token>15){
		printf("\t\t\t%c",token);
	}else{
		printf("\t\t\t%s",type[taken]);
	}
}

#endif