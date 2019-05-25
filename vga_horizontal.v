module vga_horizontal(clk,v_enable,x_c);
input clk;
output reg v_enable;
output reg [15:0] x_c;
integer  c_counter,clk_counter,clk_enable; //x counter, ... , x_enable


initial 
begin
v_enable='d0;
x_c='d0;
clk_enable='d0;
c_counter='d0;
			
end

			
always @(posedge clk)
begin
	if(c_counter==1)
	begin
		c_counter<='d0;
		clk_enable<='d1;
	end
	else 
	begin
		c_counter<=c_counter+'d1;
		clk_enable<='d0;
	end 
end
			

always @(posedge clk) begin
if(clk_enable=='d1)              
begin
  if(x_c<'d799)
  begin 
     x_c<=x_c+1;   //for horizontal writing
     v_enable<=0;	 //disable vertical count
  end 
  else  
  begin
     x_c<=0 ;
	  v_enable<=1;  //enables vertical count once
	end
end		 
end
							
endmodule 