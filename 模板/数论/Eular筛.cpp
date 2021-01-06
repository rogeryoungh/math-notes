bool notn[100000001];
int prime[20000001],cnt;
void init(int n){
    _fora(i,2,n) {
        if(!notn[i]) prime[++cnt] = i;
        int t = n/i;
        _fora(j,1,cnt) {
            if(prime[j]>t) break;
            notn[i*prime[j]] = true;
            if(i%prime[j]==0) break;
        }
    } return;
}