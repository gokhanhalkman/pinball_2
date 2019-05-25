module vga_vertical(clk,v_enable,y_c);
input clk,v_enable;

output reg [15:0] y_c;

integer c_counter,clk_enable;

initial begin
y_c='d0;
clk_enable='d0;
c_counter='d0;
			end


always @(posedge clk)begin
if(c_counter==1)begin
 c_counter<='d0;
 clk_enable<='d1;
                end
else begin
 c_counter<=c_counter+'d1;
 clk_enable<='d0;
     end 
                      end
			
always @(posedge clk) begin
if(clk_enable=='d1)          begin
if(v_enable=='b1) begin
  if(y_c<'d524)
     y_c<=y_c+1;   //for vertical writing             
  else  begin
     y_c<=0 ; 											
	     end
                  end
			          end	     
		                        end				 
endmodule 