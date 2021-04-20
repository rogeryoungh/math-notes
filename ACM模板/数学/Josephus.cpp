int josephus(int n, int k) {
    int rst = 0;
    _fora(i, 1, n)
        rst = (rst + k) % i;
    return rst;
}