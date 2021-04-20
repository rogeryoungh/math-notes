ll Lucas(ll n, ll m, int p){
    return m ? Lucas(n/p, m/p, p) * comb(n%p, m%p, p) % p : 1;
}