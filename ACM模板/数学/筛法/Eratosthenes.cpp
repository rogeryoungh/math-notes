bool notp[MAXN];
int prime[MAXN/10], cnt;
void Eratosthenes(int n) {
    _fora (i, 2, n) { if (!notp[i]) {
        prime[++cnt] = i;
        int tn = n / i;
        _fora (j, i, tn)
            notp[i * j] = true;
    } }
}