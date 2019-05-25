module quid(clk, hsync, vsync,clk_25,VGA_R,VGA_G,VGA_B, lf, rf, rst);
input clk;
input lf, rf;
input rst;
output wire hsync,vsync;


output wire [7:0] VGA_R,VGA_G, VGA_B;			
wire [11:0] x,y;

output reg clk_25;
integer c_counter;


vga_initialize mvga_initialize (.clk(clk), .x(x), .y(y), .hsync(hsync), .vsync(vsync));

initial 
begin
	c_counter=0;
	clk_25=0;
end 

		  
always @(posedge clk) 
begin		  
	if(c_counter==1)
	begin
		c_counter<='d0;
		clk_25<='d1;
	end
	else 
	begin
		c_counter<=c_counter+'d1;
		clk_25<='d0;
	end 	 
end
         		  
		  

	////// WALLS //////
   wire upper_wall, left_wall, right_wall, left_inclined_wall, right_inclined_wall;
   //orthognal (relative to screen) walls are defined as rectangles
   assign upper_wall = ((x >= 195) & (x < 445) & (y >= 45) & (y < 50)) ? 1 : 0;
   assign left_wall = ((x >= 195) & (x < 200) & (y >= 50) & (y < 300)) ? 1 : 0;
   assign right_wall = ((x >= 440) & (x < 445) & (y >= 50) & (y < 300)) ? 1 : 0;
   //inclined walls are defined as the intercection of two vertical lines and a rectangle
   assign left_inclined_wall = ((x >= 195) & (x < 290) & (y >= 300) & (y < 405)) & (x > y - 105) & (x <= y - 100) ? 1 : 0;
   assign right_inclined_wall = ((x >= 350) & (x < 445) & (y >= 300) & (y < 405)) & (x > -y + 740) & (x <= -y + 745) ? 1 : 0;

   //Alternetively assign region = ~(game field);
   ////// END WALLS //////
	
	
    ////// TARGETS //////

    //wire red_circle_a , red_circle_b, green_circle_a, green_circle_b , purple_hexagon_a , purple_hexagon_b ;

    // center points of targets
    wire[31:0] red_circle_a_x = 240, red_circle_a_y = 100,
               red_circle_b_x, red_circle_b_y,
               green_circle_a_x = 400, green_circle_a_y = 100,
               green_circle_b_x, green_circle_b_y,
               purple_hexagon_a_x = 400, purple_hexagon_a_y = 150,
               purple_hexagon_b_x, purple_hexagon_b_y;

    // radii of targets, two targets of the same kind have the same radii, radii are not random
    wire[31:0] red_circle_radius = 20, green_circle_radius = 20, purple_hexagon_edge = 25, purple_hexagon_cutoff = 15; //ask your local developper for explanation

    /*random_target_initialization my_random_target_initialization(
        //in
        .clk(clk),
        //out
        .red_circle_a_x(red_circle_a_x),
        .red_circle_a_y(red_circle_a_y),
        .red_circle_b_x(red_circle_b_x),
        .red_circle_b_y(red_circle_b_y),
        .green_circle_a_x(green_circle_a_x),
        .green_circle_a_y(green_circle_a_y),
        .green_circle_b_x(green_circle_b_x),
        .green_circle_b_y(green_circle_b_y),
        .purple_hexagon_a_x(purple_hexagon_a_x),
        .purple_hexagon_a_y(purple_hexagon_a_y),
        .purple_hexagon_b_x(purple_hexagon_b_x),
        .purple_hexagon_b_y(purple_hexagon_b_y)
        );
		  */




    assign red_circle_a = (((x - red_circle_a_x)**2 + (y - red_circle_a_y)**2 ) < red_circle_radius**2) ? 1 : 0;
    //assign red_circle_b = ((x - red_circle_b_x)*(x - red_circle_b_x) + (y - red_circle_b_y)*(y - red_circle_b_y) <= red_circle_radius*red_circle_radius) ? 1 : 0;
    assign green_circle_a = ((x - green_circle_a_x)**2 + (y - green_circle_a_y)**2 < green_circle_radius**2) ? 1 : 0;
    //assign green_circle_b = ((x - green_circle_b_x)*(x - green_circle_b_x) + (y - green_circle_b_y)*(y - green_circle_b_y) <= green_circle_radius*green_circle_radius) ? 1 : 0;
    assign purple_hexagon_a = (x + y > purple_hexagon_a_x + purple_hexagon_a_y - purple_hexagon_edge) & (x - y < purple_hexagon_a_x - purple_hexagon_a_y + purple_hexagon_edge) & (x + y < purple_hexagon_a_x + purple_hexagon_a_y + purple_hexagon_edge) & (x - y > purple_hexagon_a_x - purple_hexagon_a_y - purple_hexagon_edge) & (y < purple_hexagon_a_y + purple_hexagon_cutoff) & (y > purple_hexagon_a_y - purple_hexagon_cutoff) ? 1 : 0;
    //assign purple_hexagon_b = (x + y > purple_hexagon_b_x + purple_hexagon_b_y - purple_hexagon_edge) & (x - y < purple_hexagon_b_x - purple_hexagon_b_y + purple_hexagon_edge) & (x + y < purple_hexagon_b_x + purple_hexagon_b_y + purple_hexagon_edge) & (x - y > purple_hexagon_b_x - purple_hexagon_b_y - purple_hexagon_edge) & (y < purple_hexagon_b_y + purple_hexagon_cutoff) & (y > purple_hexagon_b_y - purple_hexagon_cutoff) ? 1 : 0;




    ////// END TARGETS //////
	 

	 
	 ////// BALL //////
	 /*
    wire ball_main;
    wire [31:0] ball_main_rad, ball_main_center_x, ball_main_center_y;

    ball #(
        //following are predetermined, not necessarily to be passed in
        .RAD(30)
        //initial_position_horizontal
        //initial_position_vertical
        //initial_movingdir_horizontal
        //initial_movingdir_vertical
        //screen_with
        //screen_height
    ) main_ball(
        //in
        .clk(clk),
        .rst(rst),
        //out
        .rad(ball_main_rad),
        .center_x(ball_main_center_x),
        .center_y(ball_main_center_y));

    assign ball_main = ((x - ball_main_center_x)*(x - ball_main_center_x) + (y - ball_main_center_y)*(y - ball_main_center_y) <= ball_main_rad*ball_main_rad) ? 1 : 0;
*/
    ////// END BALL //////
	 
	 ////// FLIPS //////



    wire left_flip, right_flip;
    //left flip static x, etc.
    wire [11:0] flip_lenght = 10;
    wire [31:0] lf_s_x = 280, lf_s_y = 280, lf_m_x = 290, lf_m_y;
    wire [31:0] rf_s_x = 360, rf_s_y = 280, rf_m_x = 350, rf_m_y;

    flip #(
        //following are predetermined, not necessarily to be passed in
        //initial_left_flip_mobile_point_y
        //initial_right_flip_mobile_point_y
        //min_left_flip_mobile_point_y
        //min_right_flip_mobile_point_y
        .flip_velocity(1999999)
    ) m_flip(
        //in
        .clk(clk),
        .rst(rst),
        .move_left_flip(lf),
        .move_right_flip(rf),

        //out
        .mobile_y_left(lf_m_y),
        .mobile_y_right(rf_m_y)
    );

    //intersection of the whole line a circle and a line that is orthogonal to x axis and crosses static points
    assign left_flip = ((x - lf_s_x)*(lf_s_y - lf_m_y) <= (y - lf_s_y )*(lf_s_x - lf_m_x) + 20) & ((x - lf_s_x)*(lf_s_y - lf_m_y) >= (y - lf_s_y )*(lf_s_x - lf_m_x) - 20) /*& ((x - lf_s_x)*(x - lf_s_x) + (y - lf_s_y)*(y - lf_s_y) < flip_lenght*flip_lenght) & (x > lf_s_x)*/? 1 : 0;
    assign right_flip = ((x - rf_s_x)*(rf_s_y - rf_m_y) <= (y - rf_s_y )*(rf_s_x - rf_m_x) + 20) & ((x - rf_s_x)*(rf_s_y - rf_m_y) >= (y - rf_s_y )*(rf_s_x - rf_m_x) - 20)/* & ((x - rf_s_x)*(x - rf_s_x) + (y - rf_s_y)*(y - rf_s_y) < flip_lenght*flip_lenght) & (x < rf_s_x)*/? 1 : 0;





    ////// END FLIPS //////
	 
 
assign VGA_R = left_flip | right_flip | upper_wall | left_wall|right_wall|left_inclined_wall|right_inclined_wall | red_circle_a | red_circle_a | purple_hexagon_a | purple_hexagon_a ? 'b1111_1111:'b0000_0000;
assign VGA_G = upper_wall | left_wall|right_wall|left_inclined_wall|right_inclined_wall | green_circle_a | green_circle_a? 'b1111_1111:'b0000_0000;
assign VGA_B = upper_wall | left_wall|right_wall|left_inclined_wall|right_inclined_wall | purple_hexagon_a | purple_hexagon_a  ? 'b1111_1111:'b0000_0000;

		
			
			
endmodule 