ll s = lg2[y-x+1];
return max(ST[x][s], ST[y-(1<<s)+1][s]);