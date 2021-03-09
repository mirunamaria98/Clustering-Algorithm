% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
  centroids=points(1:NC,:);
  [l c]=size(points);
centroid_precedent=zeros(NC,3);
 contor=0;
 min=inf;
 ok=1; 
 while (ok==1)
   centroid_precedent=centroids;
    for i= 1:l
      min=inf;
      for k=1:NC
        dis=norm(centroids(k,:) - points(i,:));
        if(dis < min)
            min=dis;
             indici(i)=k;
         endif
      endfor
    endfor
    
   for k=1:NC
   suma_x=0;
   suma_y=0;
   suma_z=0;
    contor=0;
     for i= 1:l
       if (indici(i) == k)
         contor=contor+1;
         suma_x=suma_x+points(i,1);
        suma_y=suma_y+points(i,2);
        suma_z=suma_z+points(i,3);
       endif
     endfor
     centroids(k,1)=(1/contor)*suma_x;
     centroids(k,2)=(1/contor)*suma_y;
     centroids(k,3)=(1/contor)*suma_z;
     
   endfor
   if(centroid_precedent==centroids)
     ok=0;
   endif
endwhile
	% TODO K-Means code 
end
