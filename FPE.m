function [y] = FPE(X,n,m)
%Final prediction error
y=zeros(m,1);
for i=1:m
    y(i)=X(i)*((n+i)/(n-i));
end