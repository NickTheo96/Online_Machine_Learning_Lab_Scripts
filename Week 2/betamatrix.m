function [beta] = betamatrix(M, B, P, x_seq) 
beta =[0 0 0; 0 0 0];
beta(:,3)=1;
for i=2:-1:1
    beta(:,i) =M * [B(1,x_seq(i+1)) 0 ;0 B(2,x_seq(i+1))] * beta(:,i+1);
end
end

