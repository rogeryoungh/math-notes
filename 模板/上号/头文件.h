#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
#define _fora(i,a,n) for(ll i=(a);i<=(n);i++)
#define _forz(i,a,n) for(ll i=(a);i>=(n);i--)
#define _forb(i,a) for(ll i=(a);i>0;i-=i&(-i))
#define	_dbg(x) cout<<"[Log] "<<#x<<" = "<<x<<endl;
#define	_in(i,min,max) ( ((i)-(min)) | ((max)-(i)) )
#define	_fore(i,a) for(int i=head[(a)];i;i=edge[i].nxt)
inline ll rr() {
    ll s=0,w=1;char c=getchar();
    while(_in(c,'0','9')<0) { if(c=='-') w*=-1; c=getchar(); }
    while(_in(c,'0','9')>=0) { s=s*10+c-'0'; c=getchar(); }
    return s*w;
}
inline void pr(ll x) { if(x>=10) pr(x/10); putchar(x%10+'0'); }
int main() {
    printf("\n");
    return 0;
}