load("pop_coding.mat")
% task: determine direction, in degrees, of population vector
% r_max for each neuron = maximum avg firing rate

r_max1 = 31.7070;
r_max2 = 21.0690;
r_max3 = 15.2600;
r_max4 = 27.0760;

% the eqn we are using will sum each neurons response/that neurons maximum
% % firing rate, multiplied by its prefered basis vector 
% 
weight1 = mean((r1)/ r_max1);
weight2 = mean((r2)/ r_max2);
weight3 = mean((r3)/ r_max3);
weight4 = mean((r4)/ r_max4);

v_pop = weight1*c1 + weight2*c2 + weight3*c3 + weight4*c4;
theta = rad2deg(atan(v_pop(1)/v_pop(2)));
x = 0;
y = 0;
plot(v_pop)


stim_angle = theta + 360; % regular coordinate

answer = abs(theta) + 90;

% attempt 2
% weight1 = ((r1)/ r_max1).';
% weight2 = ((r2)/ r_max2).';
% weight3 = ((r3)/ r_max3).';
% weight4 = ((r4)/ r_max4).';
% 
% v_pop = weight1*c1 + weight2*c2 + weight3*c3 + weight4*c4;
% 
% v_pop(1) = mean(v_pop(1:10, 1));
% v_pop(2) = mean(v_pop(1:10, 2));
% 
% theta = rad2deg(atan(v_pop(1)/v_pop(2)));
% 
% plot(v_pop)
%stim_angle = theta + 360; % regular coordinate

%answer = abs(theta) + 90;