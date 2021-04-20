struct QMtx {
    ll m[5][5], p;
    QMtx(ll p) : p(p) {
        memset(m, 0, sizeof(m));
    }
    QMtx operator * (QMtx& mtx) {
        QMtx c(p);
        _fora(i, 1, p) { _fora(k, 1, p) {
            ll t = m[i][k];
            _fora(j,1,p) {
                c.m[i][j] += t * mtx.m[k][j];
                c.m[i][j] %= MOD;
            }
        } }
        return c;
    }
};
QMtx base(ll p) {
    QMtx rst(p);
    _fora(i, 1, p)
        rst.m[i][i] = 1;
    return rst;
}
QMtx operator ^ (QMtx m, ll n) {
    QMtx rst = base(3);
    for(; n > 0; n >>= 1, m = m * m)
        if(n & 1) rst = m * rst;
    return rst;
}