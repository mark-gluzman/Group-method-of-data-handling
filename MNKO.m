function [y] = MNKO(X,Y,m)
%Recursive least squares filter
y=zeros(m,m);
for i=0:m-1
    if i==0      
        
        a=0;
        b=X(:,1)'*X(:,1);
        nu=b;      
        omega=(X(:,i+1))'*Y/b;
        H=1/b;
    else
   
       k=X(:,1:i);
       h=X(:,1:i)'*X(:,i+1);
       a=H*h;
       nu=(X(:,i+1))'*X(:,i+1);
       b=nu-h'*a;
       psi=(X(:,i+1))'*Y;
 %    if i==1   H=1/b;
  %   else
     H=[H+1/b*a*a' -1/b*a;-1/b*a',1/b];    
%     end
       v=1/b*(psi-h'*omega);
       omega=[omega-v*a;v];
    end    

       for j=1:i+1
           y(i+1,j)=omega(j);
       end

end