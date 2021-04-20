const ld phi = 1.6180339887498948482045868343656;
int wythoff(ll a, ll b) {
    if(a > b)
        swap(a, b);
    ll t = (ll) (b - a) * phi;
    if(t == a)
        return false;
    return true;
} // 判先手输赢