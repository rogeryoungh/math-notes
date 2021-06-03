ll aa[MAXN], pl[MAXN*4], pr[MAXN*4], sum[MAXN*4], add[MAXN*4];
void build(ll l, ll r, ll p = 1) {
    pl[p] = l, pr[p] = r;
    if (l == r) {
        sum[p] = aa[l];  return;
    }
    ll mid = (l + r) / 2;
    build(l, mid, p * 2);
    build(mid + 1, r, p * 2 + 1);
    sum[p] = sum[p * 2] + sum[p * 2 + 1];
}
void spread(ll p) {
    if (add[p]) {
        sum[p * 2] += add[p] * (pr[p * 2] - pl[p * 2] + 1);
        sum[p * 2 + 1] += add[p] * (pr[p*2+1] - pl[p*2+1] + 1);
        add[p * 2] += add[p];
        add[p * 2 + 1] += add[p];
        add[p] = 0;
    }
}
void change(ll l, ll r, ll v, ll p = 1) {
    if (l <= pl[p] && r >= pr[p]) {
        sum[p] += v * (pr[p] - pl[p] + 1);
        add[p] += v;  return;
    }  spread(p);
    ll mid = (pl[p] + pr[p]) / 2;
    if (l <= mid)  change(l, r, v, p * 2);
    if (r > mid)  change(l, r, v, p * 2 + 1);
    sum[p] = sum[p * 2] + sum[p * 2 + 1];
}
ll ask(ll l, ll r, ll p = 1) {
    if (l <= pl[p] && r >= pr[p]) {
        return sum[p];
    }  spread(p);
    ll mid = (pl[p] + pr[p]) / 2, v = 0;
    if (l <= mid)  v += ask(l, r, p * 2);
    if (r > mid)  v += ask(l, r, p * 2 + 1);
    return v;
}