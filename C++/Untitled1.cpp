#include <iostream>
using namespace std;
int main() {
    freopen("in.txt","r",stdin);
    freopen("out.txt","w",stdout);
    string a;
    while(cin>>a) {      
        string mRNA="";
        for (int i=0;i<a.length();i++)
        	if (a[i]=='A')
           	    mRNA=mRNA + 'U';
            else if (a[i]=='T')
                mRNA=mRNA + 'A';
            else if (a[i]=='C')
                mRNA=mRNA + 'G';
            else if (a[i]=='G')
                mRNA=mRNA + 'C';
        cout<<mRNA<<endl;  //endl->end of line   not end1  equal to "\n";
    }    
    return 0;    
}


