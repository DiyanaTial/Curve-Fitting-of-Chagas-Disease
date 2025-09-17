dates = ["Oct-93","Nov-94","May-95","Nov-95","May-96","Nov-96", ...
         "May-97","Nov-97","May-98","Nov-98","May-99"];


dt = datetime(dates,'InputFormat','MMM-yy');

x_years = year(dt) + (month(dt)-1)/12;  % decimal years

Amama = [2.7 1 2 2.8 3.4 3.3 8.7 7.4 6.4 8.4 7.9]

%plot(date, Amama, '-o')

Mercedes = [1 5 1 4.8 3.7 2.8 6.2 11.2 5.4 3.4 4.7]

plot(x_years, Mercedes, '-o')

s_Mercedes = std(Mercedes)

s_Amama = std(Amama)

% Split: early years (before 1997), later years (1997 and after)
early_idx = x_years < 1997;
late_idx  = x_years >= 1997;

Amama_early = Amama(early_idx);
Amama_late  = Amama(late_idx);

% Standard deviations
sd_early = std(Amama_early)
sd_late  = std(Amama_late)

x_trans = log(x_years)
y_trans = log(Amama)
plot(x_trans, y_trans)



