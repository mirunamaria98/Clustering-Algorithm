% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
 [l c]=size(points);
 [a b]=size(centroids);
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
  scatter3(points(:, 1), points(:, 2), points(:, 3), [],indici,'filled');
  
end

