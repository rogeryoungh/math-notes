ll nn[10010];
void q_sort(int l,int r) {
    int i=l,j=r,x = nn[i];
    while(i<j) {
        while(nn[j]>x&&i<j) j--;
        if(i<j) nn[i++] = nn[j];
        while(nn[i]<x&&i<j) i++;
        if(i<j) nn[j--] = nn[i];
    } nn[i] = x;
    if(l<r) { q_sort(l,i-1); q_sort(i+1,r); }
}