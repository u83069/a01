#include <iostream>
using namespace std;
int main() {
    //freopen("in.txt","r",stdin);
    //freopen("out.txt","w",stdout);
    string b;
    while(cin>>b) {      
		int a=0,t=0,c=0,g=0;    //宣告並初始化0 
		for (int i=0;i<b.length();i++)
			if (b[i]=='A')
				a++;
			else if (b[i]=='T')
				t++;
			else if (b[i]=='C')
				c++;
			else if (b[i]=='G')
				g++;
		
		cout<<a<<","<<t<<","<<c<<","<<g<<"\n";
    }    
    return 0;    
}
