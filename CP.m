function [y] = CP(X,m)
%Mallows's Cp
y=zeros(m,1);
for i=1:m
    y(i)=X(i)+2*i;
end