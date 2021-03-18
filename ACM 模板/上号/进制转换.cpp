void pr_x(ll n,int x) {
	char c = n%x; c += x>9?'A'-10:'0';
	if(n>=x) pr(n/x,x); putchar(c);
}