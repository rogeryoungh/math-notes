while(r - l > eps) {
    ld mid = (r + l) / 2;
    if(f(mid + eps) > f(mid - eps))
        l = mid;
    else
        r = mid;
}