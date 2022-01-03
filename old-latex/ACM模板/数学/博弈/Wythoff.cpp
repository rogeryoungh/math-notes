const ld phi = 1.6180339887498948482045868343656;
int Wythoff(ll a, ll b) {  // 判先手输赢
    if (a > b) swap(a, b);
    ll t = (ll) (b - a) * phi;
    if (t == a) return false;
    return true;
}