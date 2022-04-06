module testbench;

reg [15:0] xr[0:11],xi[0:11];

cbaFFT12 fft1(.x1r(xr[0]), .x2r(xr[1]), .x3r(xr[2]),.x4r(xr[3]),.x5r(xr[4]),.x6r(xr[5]),.x7r(xr[6]),.x8r(xr[7]),.x9r(xr[8]),.x10r(xr[9]),.x11r(xr[10]),.x12r(xr[11]), .x1i(xi[0]), .x2i(xi[1]), .x3i(xi[2]),.x4i(xi[3]),.x5i(xi[4]),.x6i(xi[5]),.x7i(xi[6]),.x8i(xi[7]),.x9i(xi[8]),.x10i(xi[9]),.x11i(xi[10]),.x12i(xi[11]));


initial	// Test stimulus
  begin
    xr[0] = 16'd0;
	 xr[1] = 16'd0;
	 xr[2] = 16'd0;
	 xr[3] = 16'd0;
	 xr[4] = 16'd0;
	 xr[5] = 16'd0;
	 xr[6] = 16'd0;
	 xr[7] = 16'd0;
	 xr[8] = 16'd0;
	 xr[9] = 16'd0;
	 xr[10] = 16'd0;
	 xr[11] = 16'd0;
    
	 xi[0] = 16'd0;
	 xi[1] = 16'd0;
	 xi[2] = 16'd0;
	 xi[3] = 16'd0;
	 xi[4] = 16'd0;
	 xi[5] = 16'd0;
	 xi[6] = 16'd0;
	 xi[7] = 16'd0;
	 xi[8] = 16'd0;
	 xi[9] = 16'd0;
	 xi[10] = 16'd0;
	 xi[11] = 16'd0;
    
	 //A = [2, 4, 3, 10, 3, 4, 2, 8, 1, 8, 9, 1]
	 //512.   1024.   768.   2560.   768.   1024.   512.   2048.   256.   2048.   2304.   256.
	 
	 //Esperado:
	 //14080. + 0.i  -528. + 503.i  -3456. + 222.i  -2048. + 768.i   1408. - 3326.i   2576. - 1271.i  -3840. + 0.i   2576. + 1271.i
	 //1408. + 3326.i  -2048. - 768.i  -3456. - 222.i  -528. - 503.i
	 
	 #20 xr[0] = 16'd512;
	 xr[1] = 16'd1024;
	 xr[2] = 16'd768;
	 xr[3] = 16'd2560;
	 xr[4] = 16'd768;
	 xr[5] = 16'd1024;
	 xr[6] = 16'd512;
	 xr[7] = 16'd2048;
	 xr[8] = 16'd256;
	 xr[9] = 16'd2048;
	 xr[10] = 16'd2304;
	 xr[11] = 16'd256;
	 
	 xi[0] = 16'd0;
	 xi[1] = 16'd0;
	 xi[2] = 16'd0;
	 xi[3] = 16'd0;
	 xi[4] = 16'd0;
	 xi[5] = 16'd0;
	 xi[6] = 16'd0;
	 xi[7] = 16'd0;
	 xi[8] = 16'd0;
	 xi[9] = 16'd0;
	 xi[10] = 16'd0;
	 xi[11] = 16'd0;
	 
	 //B = [8, 4, 2, 3, 9, 6, 2, 6, 7, 6, 9, 2]
	 //2048.   1024.   512.   768.   2304.   1536.   512.   1536.   1792.   1536.   2304.   512.
	 
	 //Esperado:
	 //16384. + 0.i  -434. + 1621.i  -896. + 1552.i   2816. - 1280.i  -896. - 2439.i   2226. - 597.i   2560. + 0.i   2226. + 597.i
	 //-896. + 2439.i   2816. + 1280.i  -896. - 1552.i  -434. - 1621.i
	 
	 #20 xr[0] = 16'd2048;
	 xr[1] = 16'd1024;
	 xr[2] = 16'd512;
	 xr[3] = 16'd768;
	 xr[4] = 16'd2304;
	 xr[5] = 16'd1536;
	 xr[6] = 16'd512;
	 xr[7] = 16'd1536;
	 xr[8] = 16'd1792;
	 xr[9] = 16'd1536;
	 xr[10] = 16'd2304;
	 xr[11] = 16'd512;
	 
	 xi[0] = 16'd0;
	 xi[1] = 16'd0;
	 xi[2] = 16'd0;
	 xi[3] = 16'd0;
	 xi[4] = 16'd0;
	 xi[5] = 16'd0;
	 xi[6] = 16'd0;
	 xi[7] = 16'd0;
	 xi[8] = 16'd0;
	 xi[9] = 16'd0;
	 xi[10] = 16'd0;
	 xi[11] = 16'd0;
	 
	 //C = [7, 3, 3, 5, 10, 8, 9, 0, 6, 3, 8, 1]
	 //1792.   768.   768.   1280.   2560.   2048.   2304.   0.   1536.   768.   2048.   256.
	 
	 //Esperado:
	 //16128. + 0.i  -2039. - 1570.i   128. + 3326.i   768. - 2048.i   1152. - 665.i  -265. - 2014.i   5888. + 0.i  -265. + 2014.i
	 //1152. + 665.i   768. + 2048.i   128. - 3326.i  -2039. + 1570.i
	 
	 #20 xr[0] = 16'd1792;
	 xr[1] = 16'd768;
	 xr[2] = 16'd768;
	 xr[3] = 16'd1280;
	 xr[4] = 16'd2560;
	 xr[5] = 16'd2048;
	 xr[6] = 16'd2304;
	 xr[7] = 16'd0;
	 xr[8] = 16'd1536;
	 xr[9] = 16'd768;
	 xr[10] = 16'd2048;
	 xr[11] = 16'd256;
	 
	 xi[0] = 16'd0;
	 xi[1] = 16'd0;
	 xi[2] = 16'd0;
	 xi[3] = 16'd0;
	 xi[4] = 16'd0;
	 xi[5] = 16'd0;
	 xi[6] = 16'd0;
	 xi[7] = 16'd0;
	 xi[8] = 16'd0;
	 xi[9] = 16'd0;
	 xi[10] = 16'd0;
	 xi[11] = 16'd0;
	 
	 //D = [1, 1, 8, 3, 3, 2, 0, 0, 10, 9, 8, 8]
	 //256.   256.   2048.   768.   768.   512.   0.   0.   2560.   2304.   2048.   2048.

	 //Esperado:
	 //13568. + 0.i   2192. + 3728.i  -5120. + 443.i  -512. - 256.i  -1792. + 3547.i  -912. + 624.i   1792. + 0.i  -912. - 624.i
	 //-1792. - 3547.i  -512. + 256.i  -5120. - 443.i   2192. - 3728.i
	 
	 #20 xr[0] = 16'd256;
	 xr[1] = 16'd256;
	 xr[2] = 16'd2048;
	 xr[3] = 16'd768;
	 xr[4] = 16'd768;
	 xr[5] = 16'd512;
	 xr[6] = 16'd0;
	 xr[7] = 16'd0;
	 xr[8] = 16'd2560;
	 xr[9] = 16'd2304;
	 xr[10] = 16'd2048;
	 xr[11] = 16'd2048;
	 
	 xi[0] = 16'd0;
	 xi[1] = 16'd0;
	 xi[2] = 16'd0;
	 xi[3] = 16'd0;
	 xi[4] = 16'd0;
	 xi[5] = 16'd0;
	 xi[6] = 16'd0;
	 xi[7] = 16'd0;
	 xi[8] = 16'd0;
	 xi[9] = 16'd0;
	 xi[10] = 16'd0;
	 xi[11] = 16'd0;
	 
  end
  
endmodule
