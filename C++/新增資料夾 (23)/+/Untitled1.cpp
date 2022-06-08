#include <iostream>
using namespace std;
int main() {
    freopen("in.txt","r",stdin);
    freopen("out.txt","w",stdout);
    string mRNA;
    while(cin>>mRNA) {      
        string protein="";
        for (int i=0;i<mRNA.length();i++) {
        	if (i % 3==0) 
        	   protein=protein + '(';
            if (mRNA[i]=='A')
           	    protein=protein + 'U';
            else if (mRNA[i]=='U')
                protein=protein + 'A';
            else if (mRNA[i]=='C')
                protein=protein + 'G';
            else if (mRNA[i]=='G')
                protein=protein + 'C';
            if (i % 3==2) 
        	   protein=protein + ')';
            }                
        cout<<protein<<endl;  //endl->end of line   not end1  equmRNAl to "\n";

    }    
    return 0;    
}


