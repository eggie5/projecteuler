#include<iostream>
using namespace std;
typedef long long int64;
int64 round(double x)
{
	double y=x-int64(x);
	if(y>0.5)
		return int64(x+1);
	else return int64(x);
}
int main()
{
	int64 ans=0;
	double x;
	x=2;
	while(x<4000000)
	{
		ans+=int64(x);
		x=round(4.236068*x);
	}
	cout<<ans;
}