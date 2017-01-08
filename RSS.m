function [y] = RSS(X,Y,m)
%Residual sum of squares
y=zeros(m,1);
for i=0:m-1
    if i==0      
        
        a=0;
        b=X(:,1)'*X(:,1);
        nu=b;      
        omega=(X(:,i+1))'*Y/b;
        H=1/b;
        y(i+1)=Y'*Y-omega^2*b;
    else
   
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
      
       y(i+1)=y(i)-v^2*b;
       end
    end    
           
end