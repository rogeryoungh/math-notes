int f[MN],ma[MN],b[MN];
int n,len=0; memset(f,0x3f,sizeof(f)); f[0]=0;
_fora(i,1,n) { ma[rr()]=i; } _fora(i,1,n) { b[i]=rr(); }
_fora(i,1,n) {
    int l=0,r=len;
    if(ma[b[i]]>f[len]) f[++len]=ma[b[i]];
    else { while(l<r) {
        int mid=(l+r)/2;
        if(f[mid]>ma[b[i]])r=mid;
        else l=mid+1;
    } } f[l]=min(ma[b[i]],f[l]);
}
