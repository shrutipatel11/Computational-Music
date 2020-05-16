#include <fstream>
#include <iostream>
using namespace std;

int main(int argc, char *argv[]){
	ifstream fin;
	ofstream fout;
	fin.open(argv[1]);
	fout.open(argv[2]);
	char mychar;
	char line[100];
	int no=0,f=0,c=0;
	char un[4];
	float u,a;
	int digit=0,first=0,second=0;

	while(!fin.eof()){
		fin.get(mychar);
		if(mychar == '\n' && no>2){
			for(int i=0;i<c;i++){
				a=u;
				if(line[i] != '$' && line[i] != '^' && line[i] != '_'){
					fout<<line[i];
					if(line[i+1]=='^' || line[i+1]=='_'){
						fout<<line[i+1]<<' ';
						for(int j=i+2;j<c;j++){
							if(line[j]=='$') a=a+u;
							else break;
						}
						fout<<a<<endl;
					}
					else{
						fout<<' ';
						for(int j=i+1;j<c;j++){
							if(line[j]=='$') a=a+u;
							else break;
						}
						fout<<a<<endl;
					}
					
				}
			}
			fout<<endl;
			c=0;
		}
		else if(mychar == '\n') {
			if(no<=2) {fout<<mychar; no++;}
			else no++;
		}
		else if(no>2) {
			if(mychar!=' ') line[c++] = mychar;
		}
		else {
			fout<<mychar;
			if(no==0 && f>=7) un[f-7]=mychar;
			f++;
			if(no==1){
				digit=un[0] - '0';
				if(un[1] == '.') first = un[2]- '0';
				if(un[1] == '.') second = un[3] - '0';
				if(first>=0 && first<=9 && second>=0 && second<=9){
					u = digit + (0.1*first) + (0.01*second);
				}
				else if(first>=0 && first<=9 && second>=9 ){
					u=digit + (0.1*first);
				}
				else if(first>=0 && first<=9 && second<=0 ){
					u=digit + (0.1*first);
				}
				else u=digit;
			}
		}  
	}
	fin.close();
	fout.close();
}
	
