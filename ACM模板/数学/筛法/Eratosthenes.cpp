bool notp[100000001];
int prime[20000001], cnt;
void pre_eratosthenes(int n) {
    _fora(i,2,n) { if(!notp[i]) {
        prime[++cnt] = i;
        int tn = n/i;
        _fora(j, i, tn) notp[i*j] = true;
    } }
}