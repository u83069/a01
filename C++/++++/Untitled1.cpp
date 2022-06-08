#include <iostream>
#include<math.h>
using namespace std;
int main() {
    freopen("in.txt","r",stdin);
//    freopen("out.txt","w",stdout);
    string a[23],b[23];
    int i,j;
    for (i=0;i<23;i++) 
    	cin>>a[i]>>b[i];
    string c;
    while(cin>>c) {      
        for (i=0;i<c.length();i+=3) {
//        	cout<<c.substr(i,3);
		    for (j=0;j<23;j++) {				
		    	if (b[j].find(c.substr(i,3))!=string::npos)
		    		cout<<a[j];
		    	}
        }
        cout<<"\n";
    }    
    return 0;    
}


