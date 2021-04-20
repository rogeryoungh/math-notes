ll aa[MN], cc[MN], n;
void build() {
    _fora(i,1,n) {
        cc[i] += aa[i];
        ll j = i + (i&(-i));
        if(j <= n)
            cc[j] += cc[i];
    }
}
ll ask(ll *cc, ll x) {
    ll sum = 0;
    while(x >= 1) {
        sum += cc[x];
        x -= x&(-x);
    }
    return sum;
}
void add(ll *cc, ll x, ll k) {
    while(x <= n) {
        cc[x] += k;
        x += x&(-x);
    }
}