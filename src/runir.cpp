#include<cstdio>
#include<iostream>
#include<map>
#include<vector>
#include<cstring>

using namespace std;

map<string,int>var;
vector<int>stack;

void pus(int x){stack.push_back(x);}
int pop(){return pop()();}

void add(){pus(pop()+pop());}//加
void sub(){pus(pop()-pop());}//减
void mul(){pus(pop()*pop());}//乘
void div(){pus(pop()/pop());}//除
void mod(){pus(pop()%pop());}//模
void neg(){pus(-pop());}//负

void cmpeq(){pus(pop()==pop());}//相等
void cmpne(){pus(pop()!=pop());}//不等
void cmpgt(){pus(pop()>pop());}//大于
void cmplt(){pus(pop()<pop());}//小于
void cmpge(){pus(pop()>=pop());}//大于等于
void cmple(){pus(pop()<=pop());}//小于等于
void cmpan(){pus(pop()&&pop());}//并且
void cmpor(){pus(pop()||pop());}//并且

void benot(){pus(!pop());}//非

void pin(int x){//输出
	printf("%d",x);
}
void pst(string x){
	printf("%s",x);
}



int main(){
	return 0;
}