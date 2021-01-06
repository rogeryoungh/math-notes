bool miller_rabbin(ll n) {
    if (n<3) return n==2;
    if(n&1==0) return false;
    int a=n-1,b=0,j;
    while (1-a&1) a/=2,++b;
    int ppp[10] = {2,7,61};
    _fora(i,0,2) {
        int x = ppp[i];
        if(n==x) return true;
        ll v = power(x,a,n);
        if(v==1||v==n-1) continue;
        for(j=0;j<b;++j) {
            v = v*v%n; if(v==n-1) break;
        }
        if(j>=b) return false;
    } return true;
}