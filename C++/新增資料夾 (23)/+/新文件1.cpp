#include <iostream>
#include <stdlib.h>  
using namespace std;
main(){
	freopen("in.txt","r",stdin);
	freopen("out.txt","w",stdout);
	string a;
	while(cin>>a){
		//先假設是回文012345
		//cout<<a;
		string b="回文"; 
		for (int i=0;i<a.length()/2;i+=2) {
			//依序比對頭尾，向中間趨近 
			if (a.substr(i,2)!=a.substr(a.length()-(i+2),2)) //發現不一致
				b="非回文";  //推翻假定 
				}
		cout<<b<<endl;  //輸出 endl=end of line="\n" 
			
			
	}

}

