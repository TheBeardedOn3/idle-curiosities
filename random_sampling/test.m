%% Generates random test scenarios for sampling
% Jared Beard
% August 2021
clear
clc
close all

%% Initialize
n_trials = 10000;
dist_size = [10, 50, 100, 500, 1000, 5000, 1e4, 5e4];

sample_data = zeros(n_trials,length(dist_size));
sample_b_data = zeros(n_trials,length(dist_size));


%% Evaluate Code
count = 0;
for i = 1:n_trials
    for j=1:length(dist_size)
        boundary = rand();
        distribution = generate_disc_distribution(dist_size(j));
        tic
        ind1 = sample(distribution,boundary);
        sample_data(i,j) = toc;
        tic
        ind2 = sample_bisect(distribution,boundary);
        sample_b_data(i,j) = toc;
        if ind1 ~= ind2
            count = count + 1;
            ind1
            ind2
        end
    end
end

%% Plot
loglog(dist_size, mean(sample_data))
hold on
loglog(dist_size, mean(sample_b_data))
legend('sample', 'sample bisect')
xlabel('Number of masses')
ylabel('Average time per call (s)')