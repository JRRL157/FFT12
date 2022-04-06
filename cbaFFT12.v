module cbaFFT12(
	input signed [15:0] x1r,x2r,x3r,x4r,x5r,x6r,x7r,x8r,x9r,x10r,x11r,x12r,x1i,x2i,x3i,x4i,x5i,x6i,x7i,x8i,x9i,x10i,x11i,x12i,
	output signed [15:0] X1r,X2r,X3r,X4r,X5r,X6r,X7r,X8r,X9r,X10r,X11r,X12r,X1i,X2i,X3i,X4i,X5i,X6i,X7i,X8i,X9i,X10i,X11i,X12i
);

wire signed [15:0] w1r[0:11], w1i[0:11], w2r[0:11], w2i[0:11];
wire signed [15:0] mr[0:11], mi[0:11];

//estágio 1

assign w1r[0] = x1r + x2r + x3r + x4r + x5r + x6r + x7r + x8r + x9r + x10r + x11r + x12r;
assign w1r[1] = x1r + (x3r >>> 1) - (x5r >>> 1) -x7r -(x9r >>> 1) + (x11r >>> 1);
assign w1r[2] = x1r + (x2r >>> 1) -(x3r >>> 1) -x4r -(x5r >>> 1) +(x6r>>> 1) + x7r + (x8r>>> 1) -(x9r>>> 1) -x10r -(x11r >>> 1) +(x12r >>> 1);
assign w1r[3] = x1r -x3r + x5r -x7r +x9r -x11r;
assign w1r[4] = x1r -(x2r>>> 1) -(x3r>>> 1) +x4r -(x5r>>> 1) -(x6r>>> 1) +x7r -(x8r>>> 1) -(x9r>>> 1) +x10r -(x11r >>> 1) -(x12r >>> 1);
assign w1r[5] = x1r -x2r +x3r -x4r +x5r -x6r +x7r -x8r +x9r -x10r +x11r -x12r;
assign w1r[6] = (x2r>>> 1) +x4r +(x6r>>> 1) -(x8r>>> 1) -x10r -(x12r >>> 1);
assign w1r[7] = x2r -x4r +x6r -x8r +x10r -x12r;
assign w1r[8] = x2r -x6r -x8r +x12r;
assign w1r[9] = x2r -x6r +x8r -x12r;
assign w1r[10] = x3r -x11r;
assign w1r[11] = x5r -x9r;


assign w1i[0] = x1i + x2i + x3i + x4i + x5i + x6i + x7i + x8i + x9i + x10i + x11i + x12i;
assign w1i[1] = x1i + (x3i >>> 1) - (x5i >>> 1) -x7i -(x9i >>> 1) + (x11i >>> 1);
assign w1i[2] = x1i + (x2i >>> 1) -(x3i >>> 1) -x4i -(x5i >>> 1) +(x6i>>> 1) + x7i + (x8i>>> 1) -(x9i>>> 1) -x10i -(x11i >>> 1) +(x12i >>> 1);
assign w1i[3] = x1i -x3i + x5i -x7i +x9i -x11i;
assign w1i[4] = x1i -(x2i>>> 1) -(x3i>>> 1) +x4i -(x5i>>> 1) -(x6i>>> 1) +x7i -(x8i>>> 1) -(x9i>>> 1) +x10i -(x11i >>> 1) -(x12i >>> 1);
assign w1i[5] = x1i -x2i +x3i -x4i +x5i -x6i +x7i -x8i +x9i -x10i +x11i -x12i;
assign w1i[6] = (x2i>>> 1) +x4i +(x6i>>> 1) -(x8i>>> 1) -x10i -(x12i >>> 1);
assign w1i[7] = x2i -x4i +x6i -x8i +x10i -x12i;
assign w1i[8] = x2i -x6i -x8i +x12i;
assign w1i[9] = x2i -x6i +x8i -x12i;
assign w1i[10] = x3i -x11i;
assign w1i[11] = x5i -x9i;


//estagio 2 MAGs

assign mr[0] = w1r[0];
assign mi[0] = w1i[0];
assign mr[1] = w1r[1];
assign mi[1] = w1i[1];
assign mr[2] = w1r[2];
assign mi[2] = w1i[2];
assign mr[3] = w1r[3];
assign mi[3] = w1i[3];
assign mr[4] = w1r[4];
assign mi[4] = w1i[4];
assign mr[5] = w1r[5];
assign mi[5] = w1i[5];
assign mr[6] = w1r[6];
assign mi[6] = w1i[6];
assign mr[7] = w1r[7];
assign mi[7] = w1i[7];

assign mr[8] = w1r[8] -(w1r[8] >>> 3) -(w1r[8] >>> 7);
assign mi[8] = w1i[8] -(w1i[8] >>> 3) -(w1i[8] >>> 7);

assign mr[9] = w1r[9] -(w1r[9] >>> 3) -(w1r[9] >>> 7);
assign mi[9] = w1i[9] -(w1i[9] >>> 3) -(w1i[9] >>> 7);

assign mr[10] = w1r[10] -(w1r[10] >>> 3) -(w1r[10] >>> 7);
assign mi[10] = w1i[10] -(w1i[10] >>> 3) -(w1i[10] >>> 7);

assign mr[11] = w1r[11] -(w1r[11] >>> 3) -(w1r[11] >>> 7);
assign mi[11] = w1i[11] -(w1i[11] >>> 3) -(w1i[11] >>> 7);


assign w2r[0] = mr[0];
assign w2r[1] = mr[1];
assign w2r[2] = mr[2];
assign w2r[3] = mr[3];
assign w2r[4] = mr[4];
assign w2r[5] = mr[5];
assign w2r[6] = mi[6];
assign w2r[7] = mi[7];
assign w2r[8] = mr[8];
assign w2r[9] = mi[9];
assign w2r[10] = mi[10];
assign w2r[11] = mi[11];

assign w2i[0] = mi[0];
assign w2i[1] = mi[1];
assign w2i[2] = mi[2];
assign w2i[3] = mi[3];
assign w2i[4] = mi[4];
assign w2i[5] = mi[5];
assign w2i[6] = -mr[6];
assign w2i[7] = -mr[7];
assign w2i[8] = mi[8];
assign w2i[9] = -mr[9];
assign w2i[10] = -mr[10];
assign w2i[11] = -mr[11];

//saída

assign X1r = w2r[0];
assign X2r = w2r[1] + w2r[6] + w2r[8] + w2r[10] + w2r[11];
assign X3r = w2r[2] + w2r[9] + w2r[10] - w2r[11];
assign X4r = w2r[3] + w2r[7];
assign X5r = w2r[4] + w2r[9] - w2r[10] + w2r[11];
assign X6r = w2r[1] + w2r[6] -w2r[8] -w2r[10] -w2r[11];
assign X7r = w2r[5];
assign X8r = w2r[1] -w2r[6] -w2r[8] +w2r[10] +w2r[11];
assign X9r = w2r[4] -w2r[9] +w2r[10] -w2r[11];
assign X10r = w2r[3] -w2r[7];
assign X11r = w2r[2] -w2r[9] - w2r[10] +w2r[11];
assign X12r = w2r[1] -w2r[6] + w2r[8] -w2r[10] -w2r[11];

assign X1i = w2i[0];
assign X2i = w2i[1] + w2i[6] + w2i[8] + w2i[10] + w2i[11];
assign X3i = w2i[2] + w2i[9] + w2i[10] - w2i[11];
assign X4i = w2i[3] + w2i[7];
assign X5i = w2i[4] + w2i[9] - w2i[10] + w2i[11];
assign X6i = w2i[1] + w2i[6] -w2i[8] -w2i[10] -w2i[11];
assign X7i = w2i[5];
assign X8i = w2i[1] -w2i[6] -w2i[8] +w2i[10] +w2i[11];
assign X9i = w2i[4] -w2i[9] +w2i[10] -w2i[11];
assign X10i = w2i[3] -w2i[7];
assign X11i = w2i[2] -w2i[9] - w2i[10] +w2i[11];
assign X12i = w2i[1] -w2i[6] + w2i[8] -w2i[10] -w2i[11];

endmodule
