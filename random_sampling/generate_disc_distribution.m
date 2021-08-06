function [distribution] = generate_disc_distribution(n)
%GENERATE_DISTRIBUTION Generates a discrete distribution
% IN -------------------------------------
% n                 (int) length of distribution
%
% OUT ------------------------------------
% index             (int) index of sampled value 
%
% TODO -----------------------------------
% 
distribution = rand(n,1);
distribution = distribution/sum(distribution);
end

