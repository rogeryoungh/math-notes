_fora(i, 1, n)  _forz(j, m, v[i])
    dp[j] = max(dp[j], dp[j-v[i]]+w[i]);
_fora(j, 1, m)  ans = max(ans, dp[j]);