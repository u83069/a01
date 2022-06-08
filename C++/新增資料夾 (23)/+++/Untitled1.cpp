#include <iostream>
#include<math.h>
using namespace std;
int main() {
    freopen("in.txt","r",stdin);
    freopen("out.txt","w",stdout);
    string a,b;
    while(cin>>a) {      
        int i;
        int j=0;
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
			cout<<string(abs(2-j%5),' ');
			if ((j/5)%2==0)
				cout<<a[i];
			else
				cout<<c;
			cout<<string(4-abs(2-j%5)*2,'-');
        	if ((j/5)%2==0)
				cout<<c;
			else
				cout<<a[i];
			
			cout<<endl;
			
        	j++;
        }
    }    
    return 0;    
}


