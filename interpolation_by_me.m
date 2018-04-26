function [ x_out y_out ] ...
    = interpolation_by_me( x_in, y_in, n_points, method )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   Method = 
%   'linear' | 'nearest' | 'spline' | 'pchip' | 'cubic'

min_x_in = min(x_in);
max_x_in = max(x_in);

x_out = (0:1/(n_points-1):1)*(max_x_in - min_x_in)+min_x_in;

y_out = interp1(x_in, y_in, x_out, method);


end



