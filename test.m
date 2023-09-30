function quantize = quantization(y,b)

for i=0:length(y)
    if y>=1
        quantize = 1;
    elseif y<= -1
        quantize = -1;
    else
        quantize = floor(sign(y).*(2*floor(abs(y)/(2/2^b))+1)*(2/2^b)/2);
    end
end
