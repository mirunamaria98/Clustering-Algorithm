function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  points = [];
  vector = [];
  points=dlmread(file_points," ",5,1);
  for i = 1:10
    centroids = clustering_pc(points,i);
     vector(i) = compute_cost_pc(points, centroids);
  endfor
  i = 1:10;
  plot(i, vector(i));
endfunction