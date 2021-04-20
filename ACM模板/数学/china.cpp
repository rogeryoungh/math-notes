ll china(ll* aa, ll* nn) {
    ll prod = 1;
    ll rst = 0;
    _fora(i, 1, n)
        prod *= nn[i];
    _fora(i, 1, n) {
        ll m = prod / nn[i];
        rst += aa[i] * m * inv(m, nn[i]);
        rst %= prod;
    }
    return rst;
}