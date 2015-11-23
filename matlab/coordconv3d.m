%%
%This is adapted from Octave Mapping Toolbox by Michael Hirsch, so as to be Matlab and Octave compatible
% Copyright (C) 2013 Felipe G. Nievinski
% Copyright (C) 2013 Sandeep V. Manthi

function [az, elev, slantRange] = ecef2aer (x, y, z, lat0, lon0, h0, ell, angleut)
  [xEast, yNorth, zUp] = ecef2enu (x, y, z, lat0, lon0, h0, ell, angleut);
  [az,elev,slantRange] = enu2aer (xEast, yNorth, zUp, angleut);
 end
