bool notp[MAXN];
int prime[MAXN/10], cnt;
void Euler(int n){
    _fora (i, 2, n) {
        if (!notp[i])  prime[++cnt] = i;
        int t = n / i;
        _fora (j, 1, cnt) {
            ll pj = prime[j];
            if (pj > t)  break;
            notp[i * pj] = true;
            if (i % pj == 0)  break;
        }
    }
}