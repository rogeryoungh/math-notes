struct Mtx {
    ll m[MN][MN], p, q;
    Mtx(ll p, ll q) : p(p), q(q) {
        memset(m, 0, sizeof(m));
    }
    Mtx operator * (Mtx& mtx) {
        Mtx c(p, mtx.q);
        _fora(i, 1, p) { _fora(k, 1, q) {
            ll t = m[i][k];
            _fora(j, 1, mtx.q) {
                c.m[i][j] += t * mtx.m[k][j];
                c.m[i][j] %= MOD;
            }
        } }
        return c;
    }
};