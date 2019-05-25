module vga_initialize(clk, x, y, hsync, vsync);

input clk;
output wire [11:0] x;
output wire [11:0] y;
output wire hsync, vsync;


reg vga_enable;
integer clk_counter, clk_enable;

reg [11:0] x_c, y_c;

initial
begin
	x_c = 0;
	y_c = 0;
	vga_enable = 0;
	clk_counter = 0;
	clk_enable = 0;

	
end

always @(posedge clk)
begin
	if(clk_counter==1)
	begin
		clk_counter<=0;
		clk_enable<='d1;
	end
	else 
	begin
		clk_counter<=clk_counter+1;
		clk_enable<=0;
	end 
end

always @(posedge clk) 
begin
	if(clk_enable==1)              
	begin
	  if(x_c<799)
	  begin 
		  x_c<=x_c+1;   //for horizontal writing
		  vga_enable<=0;	 //disable vertical count
	  end 
	  else  
	  begin
		  x_c<=0 ;
		  vga_enable<=1;  //enables vertical count once
		end
	end		 
end


always @(posedge clk) 
begin
	if(clk_enable==1)          
		begin
			if(vga_enable==1) 
				begin
					if(y_c<524)
						  y_c<=y_c+1;   //for vertical writing             
				else  
			begin
				  y_c<=0 ; 											
			end
		end
	end	     
end	
				


assign hsync=(x_c<96) ? 0:1;		  
assign vsync=(y_c<2) ? 0:1;
assign x=(x_c<145 | x_c> 784)  ? 0: x_c-145;
assign y=(y_c<36 | y_c> 515)  ? 0: y_c-36;				
										
endmodule