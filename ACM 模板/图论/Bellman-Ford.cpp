void bellman_ford(int ss) {
    memset(dis,0x3f,sizeof(dis)); dis[ss]=0;
    _fora(iia,1,n-1) { int flag=1;
        _fora(i,1,n) { int size=ee[i].size();
            _fora(j,0,size-1) {
                int v=ee[i][j].nxt, t=dis[i]+ee[i][j].len;
                if(dis[ee[i][j].nxt]>t) {
                    dis[ee[i][j].nxt] = t;
                    flag = 0;
                }
            }
        } if(flag) return;
    }
}