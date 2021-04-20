_fora(j,0,lg2n-1) {
    ll tj = 1 << j;
    ll ti = n - (1<<(j+1)) + 1;
    _fora(i,1,ti)
        ST[i][j+1] = max(ST[i][j], ST[i+tj][j]);
}