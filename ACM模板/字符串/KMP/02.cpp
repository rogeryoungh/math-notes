void kmp(char* s, ll lens, char* t, ll lent) {
    pre_kmp(s, lens);
    ll p = 0;
    _fora(i, 0, lent-1) {
        ll j = p;
        while(j && t[i] != s[j])
            j = pi[j-1];
        p = j + (t[i] == s[j]);
        if(p == lens)
            // 出现起始 i-lens+2       
    }
}