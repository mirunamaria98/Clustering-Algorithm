% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
  % TODO read NC
  NC= dlmread(file_params);
  points=dlmread(file_points," ",5,0);
	% TODO read points
end

