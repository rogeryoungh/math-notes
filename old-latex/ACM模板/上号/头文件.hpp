#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
typedef long double ld;
#define _fora(i,a,n) for(ll i=(a);i<=(n);i++)
#define _forz(i,a,n) for(ll i=(a);i>=(n);i--)
#define _forb(i,a)   for(ll i=(a);i>0;i-=i&(-i))
#define _fore(i,a)   for(int i=head[(a)];i;i=edge[i].nxt)
#define _in(i,min,max) ( ((i)-(min)) | ((max)-(i)) )
#define _dbg(...) printf(__VA_ARGS__)
#define LN putchar('\n')

inline ll rr() {
    ll s = 0, w = 1; char c = getchar();
    while(c<'0'||c>'9') { if(c=='-')w=-1; c=getchar(); }
    while(c>='0'&&c<='9') { s=s*10+c-'0'; c=getchar(); }
    return s*w;
}