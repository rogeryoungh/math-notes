ll addup(ll n, ll x,ll k,ll l){ //k=1,l=0
    ll  a=0; if(n>9) a=addup(n/10,x,k*10,l+1);
    n%=10; sum += ((n>x)+n*a)*k+n*l*k/10-(!x)*k;
    return a+(n==x);
}