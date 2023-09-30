function quant=quantization(y,b)
step=2/2^b;
quant=sign(y).*(2*floor(abs(y)/step)+1)*step/2;
quant(find(quant>1)) = 1-step/2;
quant(find(quant<-1)) = -1+step/2;