#include <iostream>
#include<math.h>
using namespace std;
int main() {
    freopen("in.txt","r",stdin);
    freopen("out.txt","w",stdout);
    string a,b;
    while(cin>>a) {      
        int i;
        for (i=0;i<a.length();i++) {
        	char c;
        	if (a[i]=='A')
        		c='T';
        	else if  (a[i]=='T')
        		c='A';
        	else if  (a[i]=='C')
        		c='G';
        	else if  (a[i]=='G')
        		c='C';
			cout<<a[i]<<"----"<<c<<"\n";
        }
    }    
    return 0;    
}


