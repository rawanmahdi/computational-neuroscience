load('tuning.mat')

fire1 = zeros(1,24);
fire2 = zeros(1,24);
fire3 = zeros(1,24);
fire4 = zeros(1,24);

for i = 1:1:100
    fire1 = fire1 + neuron1(i, 1:24);
end 
m_fire1 = fire1/100;

for i = 1:1:100
    fire2 = fire2 + neuron2(i, 1:24);
end 
m_fire2 = fire2/100;

for i = 1:1:100
    fire3 = fire3 + neuron3(i, 1:24);
end 
m_fire3 = fire3/100;

for i = 1:1:100
    fire4 = fire4 + neuron4(i, 1:24);
end 
m_fire4 = fire4/100;

plot(stim, m_fire1, stim, m_fire2, stim, m_fire3, stim, m_fire4);
legend("neuron 1", "neuron 2", "neuron 3", "neuron 4")

% q8: Poisson neurons - generation of each spike depends only 
% on underlying continuous driving signal, r(t) - the instantaneous firing
% rate, therefore the generation of each spike it independent of all other
% spikes 

% given neurons 1, 2, and 4 produced graphs that had a sudden change in
% firing rate, whereas neuron 3 had a gradual change in firing rate, we may
% conclude that neuron 3 has some dependance on surronding neurons, making
% it not accurately described  by the poisson process
