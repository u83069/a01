#include <iostream>
#include <stdlib.h>  
using namespace std;
main(){
	freopen("in.txt","r",stdin);
	freopen("out.txt","w",stdout);
	string a;
	while(cin>>a){
		//�����]�O�^��012345
		//cout<<a;
		string b="�^��"; 
		for (int i=0;i<a.length()/2;i+=2) {
			//�̧Ǥ���Y���A�V�����ͪ� 
			if (a.substr(i,2)!=a.substr(a.length()-(i+2),2)) //�o�{���@�P
				b="�D�^��";  //��½���w 
				}
		cout<<b<<endl;  //��X endl=end of line="\n" 
			
			
	}

}

