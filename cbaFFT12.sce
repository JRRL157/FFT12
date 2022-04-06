// Bloco otimizado de FFT de comprimento 12

function X = cbaFFT12(x)
    //estágio 1
    w1(1) = x(1) + x(2) + x(3) + x(4) + x(5) + x(6) + x(7) + x(8) + x(9) + x(10) + x(11) + x(12);
    w1(2) = x(1) + x(3)/2 - x(5)/2 -x(7) -x(9)/2 + x(11)/2;
    w1(3) = x(1) + x(2)/2 -x(3)/2 -x(4) -x(5)/2 +x(6)/2 + x(7) + x(8)/2 -x(9)/2 -x(10) -x(11)/2 +x(12)/2;
    w1(4) = x(1) -x(3) + x(5) -x(7) +x(9) -x(11);
    w1(5) = x(1) -x(2)/2 -x(3)/2 +x(4) -x(5)/2 -x(6)/2 +x(7) -x(8)/2 -x(9)/2 +x(10) -x(11)/2 -x(12)/2;
    w1(6) = x(1) -x(2) +x(3) -x(4) +x(5) -x(6) +x(7) -x(8) +x(9) -x(10) +x(11) -x(12);
    w1(7) = x(2)/2 +x(4) +x(6)/2 -x(8)/2 -x(10) -x(12)/2;
    w1(8) = x(2) -x(4) +x(6) -x(8) +x(10) -x(12);
    w1(9) = x(2) -x(6) -x(8) +x(12);
    w1(10) = x(2) -x(6) +x(8) -x(12);
    w1(11) = x(3) -x(11);
    w1(12) = x(5) -x(9);
    
    //estágio 2
    w2(1) = w1(1);
    w2(2) = w1(2);
    w2(3) = w1(3);
    w2(4) = w1(4);
    w2(5) = w1(5);
    w2(6) = w1(6);
    w2(7) = -%i*w1(7);
    w2(8) = -%i*w1(8);
    w2(9) = cos(2*%pi/12)*w1(9);
    w2(10) = -%i*cos(2*%pi/12)*w1(10);
    w2(11) = -%i*cos(2*%pi/12)*w1(11);
    w2(12) = -%i*cos(2*%pi/12)*w1(12);
    
    //saída
    X(1) = w2(1);
    X(2) = w2(2) + w2(7) + w2(9) + w2(11) + w2(12);
    X(3) = w2(3) + w2(10) + w2(11) - w2(12);
    X(4) = w2(4) + w2(8);
    X(5) = w2(5) + w2(10) - w2(11) + w2(12);
    X(6) = w2(2) + w2(7) -w2(9) -w2(11) -w2(12);
    X(7) = w2(6);
    X(8) = w2(2) -w2(7) -w2(9) +w2(11) +w2(12);
    X(9) = w2(5) -w2(10) +w2(11) -w2(12);
    X(10) = w2(4) -w2(8);
    X(11) = w2(3) -w2(10) - w2(11) +w2(12);
    X(12) = w2(2) -w2(7) + w2(9) -w2(11) -w2(12);
endfunction
