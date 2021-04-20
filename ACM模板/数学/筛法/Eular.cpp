bool notp[100000001];
int prime[20000001], cnt;
void pre_eular(int n){
    _fora(i, 2, n) {
        if(!notp[i])  prime[++cnt] = i;
        int t = n / i;
        _fora(j,1,cnt) {
            if(prime[j] > t)  break;
            notp[i * prime[j]] = true;
            if(i % prime[j] == 0)  break;
        }
    }
}