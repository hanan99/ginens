
definput = {'0'};
opts.Resize = 'on';
str = inputdlg('order of your square matris:', 'DIMENSION', [1 50],definput, opts);
n = str2num(str{1});
strone = inputdlg('Enter your A matrix as a list of numbers separated by spaces or commas:  ', 'THE''A'' MATRIX', [1 100],definput, opts);
numbers = str2num(strone{1});
A = reshape(numbers,n,n);
%A = rand(n);
%matrandom = msgbox(num2str(A),'random matrix');
[A , G] = Givens(A,n);
r = msgbox(num2str(A),'R');
q = msgbox(num2str(G'),'Q');
mat = msgbox(num2str((G')*A),'Q*R');
function [ A , G ] = Givens(A,n)
    G = eye(n);
    for i = 1:(n-1)
        for j = i+1:n
            G1 = eye(n);
            c = A(i,i)/(sqrt((A(i,i)^2)+(A(j,i)^2)));
            disp(c);
            G1(i,i) = c;
            G1(j,j) = c;
            s = A(j,i)/(sqrt((A(i,i)^2)+(A(j,i)^2)));
            disp(s);
            G1(j,i) = -s;
            G1(i,j) = s;
            disp(G1);
            A = G1*A;
            disp(A);
            G = G1*G;
            disp(G);
            
        end
    end   
end

            
            

