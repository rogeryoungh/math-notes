bool notn[100000001];
int prime[20000001], cnt;
void init(int n) {
    _fora(i,2,n) { if(!notn[i]) {
        prime[++cnt] = i;
        int tn = n/i;
        _fora(j,i,tn) notn[i*j] = true;
    } } return;
}