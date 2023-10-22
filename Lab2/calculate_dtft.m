%Zhengda Li
%McMaster University
%400324486

function output_dtft = calculate_dtft(x,w)
N = -1000:1:1000;
shift = N-(1000);
W = (w(2)-w(1))/(length(N)-1);
X = zeros(1,length(N));
for j = 1:1:length(N)
    for h = 1:1:length(x)
        X(j)=X(j)+x(h)*exp(-1i*(w(1)+W*shift(j))*(h-1));
    end
end
output_dtft = X;

