function juliaAnimation(zMax, c, N)
%this function will produce an animation of a julia set
vec=linspace(-zMax,zMax,500);
%create 500 element vector
[R, I]=meshgrid(vec);
%form a vector of the real part and of the imaginary part
Z=R+(i.*I);
%from matrix Z of the imaginary and real vectors
M=N.*(ones(500));
%form matrix M of ones same size as Z
for n=1:N
    %for loop 1 to N
    Z=(Z.^2)+c;
    %new values for Z
    Z(abs(Z)>2)=NaN;
    %get rid of Z we don't want
    M(abs(Z)<2)=n;
    %add Zs we do want to M
    imagesc(vec,vec,atan(0.1*M));
    %display new matrix for each loop
    axis xy;
    drawnow;
end
