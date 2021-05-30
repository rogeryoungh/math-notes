bool notp[MN];
int prime[MN/10], cnt;
int mu[MN], phi[MN];
void sieve(int n) {
    phi[1] = mu[1] = 1;
    _fora (i, 2, n) {
        if (!notp[i]) {
            prime[++cnt] = i;
            phi[i] = i - 1, mu[i] = -1;
        }
        int t = n / i;
        _fora (j, 1, cnt) {
            int pj = prime[j], ti = i * pj;
            if (pj > t) break;
            notp[ti] = true;
            if (i % pj == 0) {
                phi[ti] = phi[i] * pj;
                mu[ti] = 0;
                break;
            }
            phi[ti] = phi[i] * (pj - 1);
            mu[ti] = - mu[i];
        }
    }
}