int tm=1,vv[ ],ww[ ];
_fora(i, 1, n) {
    int tc = c[i];
    for(int b=1;b<p;b<<=1,tc-=b,++tm)
        vv[tm] = v[i] * b, ww[tm] = w[i] * b;
    vv[tm] = v[i] * tc, ww[tm] = w[i] * tc;
    ++tm;
}
_fora(i, 1, n)  _forz(j, m, v[i])
    dp[j] = max(dp[j], dp[j-v[i]]+w[i]);
_fora(j, 1, m)  ans = max(ans, dp[j]);