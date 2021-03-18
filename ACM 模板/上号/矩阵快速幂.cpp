const int mod=1e9+7;
ll a[105][105],b,n;
ll ans[105][105]={0};
inline void jzcf1(){
	ll c[105][105]={0};//新矩阵放临时结果
	_fora(k,1,n) _fora(i,1,n) _fora(j,1,n)
		c[i][j]=(c[i][j]+ans[i][k]*a[k][j])%mod;
	_fora(i,1,n) _fora(j,1,n)
		ans[i][j]=c[i][j];
}
inline void jzcf2(){
	ll c[105][105]={0};
	_fora(k,1,n) _fora(i,1,n) _fora(j,1,n)
		c[i][j]=(c[i][j]+ans[i][k]*a[k][j])%mod;
	_fora(i,1,n) _fora(j,1,n)
		a[i][j]=c[i][j];
}
int main(){
	int n; //读入
	_fora(i,1,n) ans[i][i]=1;
	while(b){  
		if(b&1) jzcf1();//矩阵乘法
		jzcf2(); b>>=1;
	}
}
