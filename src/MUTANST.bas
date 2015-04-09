10 dim w$(50):w$(1)="mutant":nw=1
20 for i=1 to 30
30 for wn=1 to nw:print " ";w$(wn);:next wn:print
100 c=int(rnd(1)*2)+1:if c>1 goto 200
110 cw$=w$(int(rnd(1)*nw)+1):gosub 1200
120 goto 300
200 p=int(rnd(1)*nw)+1:cw$=w$(p)
210 z=int(rnd(1)*3)
220 if z<2 then gosub 1000
230 if z>=2 then gosub 1100
240 w$(p)=cw$
300 next
310 end
1000 k=int(rnd(1)*len(cw$))+1
1010 cw$=left$(cw$,k-1)+"s"+mid$(cw$,k)
1020 return
1100 k=int(rnd(1)*len(cw$))+1
1110 cw$=left$(cw$,k-1)+mid$(cw$,k+1)
1120 return
1200 k=int(rnd(1)*(len(cw$)+1))
1210 for g=nw to k step -1:w$(g+1)=w$(g):next
1220 w$(k)=cw$:nw=nw+1
1230 return
