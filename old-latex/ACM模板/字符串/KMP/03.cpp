void pre_exkmp(char* s, ll lens) {
    ll l = 0, r = 0;
    _fora(i, 1, lens - 1) {
        if(i <= r)  zz[i] = min(r - i + 1, zz[i - l]);
        ll tz = zz[i];
        while(i + tz < lens && s[tz] == s[i+tz])
            tz++;
        zz[i] = tz;
        if(i + zz[i] - 1 > r)  l = i, r = i + zz[i] - 1;
    }
    zz[0] = lens;
}

void exkmp(char* s, ll lens, char* t, ll lent) {
    pre_exkmp(t, lent);
    ll l = -1, r = -1;
    ext[0] = 0;
    _fora(i, 0, lens - 1) {
        if(i <= r)  ext[i] = min(r - i + 1, zz[i - l]);
        ll tz = ext[i];
        while(i + tz < lens && t[tz] == s[i+tz])  tz++;
        ext[i] = tz;
        if(i + ext[i] - 1 > r)  l = i, r = i + ext[i] - 1;
    }
}