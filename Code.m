dates = ["Oct-93","Nov-94","May-95","Nov-95","May-96","Nov-96", ...
         "May-97","Nov-97","May-98","Nov-98","May-99"];

dt = datetime(dates,'InputFormat','MMM-yy');

x_years = year(dt) + (month(dt)-1)/12; % decimal years

t0 = x_years(1); % first point (1)
t = round(12*(x_years - t0)) + 1; 

Amama = [2.7 1 2 2.8 3.4 3.3 8.7 7.4 6.4 8.4 7.9]';

Mercedes = [1 5 1 4.8 3.7 2.8 6.2 11.2 5.4 3.4 4.7]';


% Variable is AmamaFit for the new fitted fig
% Detrended data for Amama & Mercedes

MercedesFitVals3 = feval(MercedesFit3, t)
Vd = Mercedes - MercedesFitVals3;




