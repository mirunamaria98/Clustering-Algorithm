% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
cost = 0; 
[a b] =size(centroids);
[l c]=size(points);
for i= 1:l
    min=inf;
    for k=1:a
      dis=norm(centroids(k,:) - points(i,:));
      if(dis < min)
          min=dis;
          indici(i)=k;
      endif
    endfor
 endfor
    
for k=1:a
  suma=0;
  for i= 1:l
    if (indici(i) == k)
       suma=suma+norm(centroids(k,:) - points(i,:));
    endif
   endfor
  cost=cost+suma;
endfor
	% TODO compute clustering solution cost
end

