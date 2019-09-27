function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%  

tempcentroids = zeros(size(idx),K);
for p = 1 : K 
  tempcentroids(:,p) = idx == p; 
endfor

newrank = zeros(K, n);

for i = 1 : K
  for j = 1 : m 
    if(tempcentroids(j,i) == 1) 
      newrank(i,:) = newrank(i,:) + X(j,:);
    endif
  endfor
endfor

for h = 1 : K 
  centroids(h, :) = newrank(h, :) ./ sum(tempcentroids(:,h));
endfor







  %  first = zeros(idx,1); 
   % second = zeros(idx,1);
    %third = zeros(idx, 1);
%
 %   first = idx == 1; 
  %  second = idx == 2; 
   % third = idx == 3; 
    %firstCents = zeros(1,2); 
    %secondCents = zeros(1, 2); 
    %thirdCents = zeros(1, 2);
    %for i = 1 : m
     % if (first(i) == 1) 
      %  firstCents = firstCents + X(i,:); 
      %endif
      %if (second(i) == 1) 
       % secondCents = secondCents + X(i, :); 
      %endif 
      %if (third(i) == 1) 
       % thirdCents = thirdCents + X(i, :); 
      %endif
    %endfor
    %centroids(1, :) = firstCents./sum(first); 
    %centroids(2, :) = secondCents./sum(second);
    %centroids(3, :) = thirdCents./sum(third);





% =============================================================


end

