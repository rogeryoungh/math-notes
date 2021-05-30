bool Miller_Rabbin(ll n) {
    if (n < 3)  return n == 2;
    if (n & 1 == 0)  return false;
    int a = n - 1, b = 0;
    while (1 - a & 1)  a /= 2, ++b;
    int ppp[10] = {2,7,61};
    _fora (i, 0, 2) {
        ll x = ppp[i], j;
        if (n == x)  return true;
        ll v = qpow(x,a,n);
        if (v == 1 || v == n-1)  continue;
        _fora (j, 0, b - 1) {
            v = v * v % n;
            if (v == n - 1)  break;
        }
        if (j >= b)  return false;
    }  return true;
}