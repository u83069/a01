#include <iostream>
#include <stdlib.h>  
using namespace std;
main(){
	freopen("in.txt","r",stdin);
	freopen("out.txt","w",stdout);
	string a;
	while(cin>>a){
		//cout<<a;
		for (int i=a.length()-2;i>=0;i-=2) 
			cout<<a.substr(i,2);
		cout<<endl; 
	}

}

