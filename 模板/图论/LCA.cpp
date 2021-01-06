int fa[MN][30],lgb[MN],depth[MN];
void lca_dfs(int now,int fat) {
    _fora(i,1,n) lgb[i]=lgb[i>>1]+1; lgb[1]=0;
    fa[now][0] = fat;
    depth[now] = depth[fat]+1;
    _fora(i,1,lgb[depth[now]])
        fa[now][i] = fa[fa[now][i-1]][i-1];
    _fore(i,now) if(edge[i].too!=fat)
        lca_dfs(edge[i].too,now);
}
int lca(int x,int y) {
    if(depth[x]<depth[y]) swap(x,y);
    while(depth[x]>depth[y])
        x = fa[x][lgb[depth[x]-depth[y]]];
    if(x==y) return x;
    _forz(k,lgb[depth[x]]-1,0)
        if(fa[x][k]!=fa[y][k])
            { x=fa[x][k]; y=fa[y][k]; }
    return fa[x][0];
}