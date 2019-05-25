
module ball #(
    RAD = 30,    // radius of the ball
    IX=430,         // initial horizontal position of ball centre
    IY=230,         // initial vertical position of ball centre
    IX_DIR=1,       // initial horizontal direction: 2 is right, 1 is left, 0 is stop
    IY_DIR=1,       // initial vertical direction: 2 is down, 1 is up, 0 is stop

    left_wall_x = 200,
    right_wall_x = 440,
    upper_wall_y = 50,
    left_inclined_wall_constant = 278,
    right_inclined_wall_constant = 198,
    lfsx = 280,
    lfsy = 280,
    lfmx = 290,
    rfsx = 360,
    rfsy = 280,
    rfmx = 350,
    red_circle_rad = 40,
    green_circle_rad = 40,
    purple_hexagon_rad = 50,
    purple_hexagon_cut = 30

    )
    (

        input wire clk,               // base clock
        input wire rst,               // reset: returns animation to starting position

        //i have decided to assisg the commented variables as static for now
        //input wire left_wall_x,
        //input wire right_wall_x,
        //input wire upper_wall_y,

        //input wire left_inclined_wall_constant,
        //input wire right_inclined_wall_constant,

        //input wire lfsx,
        //input wire lfsy,
        //input wire lfmx,

        input wire [11:0] lfmy,

        //input wire rfsx,
        //input wire rfsy,
        //input wire rfmx,

        input wire [11:0] rfmy,

        //input wire red_circle_rad,

        input wire [11:0] red_circle_a_center_x,
        input wire [11:0] red_circle_a_center_y,
        input wire [11:0] red_circle_b_center_x,
        input wire [11:0] red_circle_b_center_y,

        //input wire green_circle_rad,

        input wire [11:0] green_circle_a_center_x,
        input wire [11:0] green_circle_a_center_y,
        input wire [11:0] green_circle_b_center_x,
        input wire [11:0] green_circle_b_center_y,

        //input wire purple_hexagon_rad,
        //input wire purple_hexagon_cut,

        input wire [11:0] purple_hexagon_a_center_x,
        input wire [11:0] purple_hexagon_a_center_y,
        input wire [11:0] purple_hexagon_b_center_x,
        input wire [11:0] purple_hexagon_b_center_y,

        output wire [11:0] rad,       // radius of the ball
        output wire [11:0] center_x,  // horizontal position of the ball
        output wire [11:0] center_y  // vertical position of the ball
    );

    reg [11:0] lwx = left_wall_x + RAD;
    reg [11:0] rwx = right_wall_x - RAD;
    reg [11:0] uwy = upper_wall_y + RAD;
    reg [11:0] liwc = left_inclined_wall_constant - 4*RAD; //ask for explanation
    reg [11:0] riwc = right_inclined_wall_constant - 4*RAD; //ask for explanation

    /* not now
    reg [11:0] lsx = ;
    reg [11:0] lsy = ;
    reg [11:0] lmx = ;
    reg [11:0] lmy = ;
    reg [11:0] rsx = ;
    reg [11:0] rsy = ;
    reg [11:0] rmx = ;
    reg [11:0] rmy = ;
    */
	/*
    reg [11:0] rcr = red_circle_rad + RAD;
    reg [11:0] gcr = green_circle_rad + RAD;
    reg [11:0] phe = purple_hexagon_rad + RAD;
    reg [11:0] phc = purple_hexagon_cut + 6; // RAD*(0.58) // ask for explanation

    reg [11:0] rcacx = red_circle_a_center_x;
    reg [11:0] rcacy = red_circle_a_center_y;
    reg [11:0] rcbcx = red_circle_b_center_x;
    reg [11:0] rcbcy = red_circle_b_center_y;

    reg [11:0] gcacx = green_circle_a_center_x;
    reg [11:0] gcacy = green_circle_a_center_y;
    reg [11:0] gcbcx = green_circle_b_center_x;
    reg [11:0] gcbcy = green_circle_b_center_y;

    reg [11:0] phacx = purple_hexagon_a_center_x;
    reg [11:0] phacy = purple_hexagon_a_center_y;
    reg [11:0] phbcx = purple_hexagon_b_center_x;
    reg [11:0] phbcy = purple_hexagon_b_center_y;
*/

    reg [11:0] x = IX;   // horizontal position of ball centre
    reg [11:0] y = IY;   // vertical position of ball centre
    reg [1:0] x_dir = IX_DIR;  // horizontal animation direction
    reg [1:0] y_dir = IY_DIR;  // vertical animation direction

    reg now_move_xdir = 0;
    integer clk_counter_xdir = 0;
    integer clk_counter_period_xdir = 5000000000;

    reg now_move_ydir = 0;
    integer clk_counter_ydir = 0;
    integer clk_counter_period_ydir = 5000000000;

    assign rad = RAD;
    assign center_x = x;
    assign center_y = y;

    always @ (posedge clk)
    begin
        // When will the ball move? The number of clock cycles to be waited before next move is dynamically determined
        if(clk_counter_xdir == clk_counter_period_xdir - 1)
        begin
            now_move_xdir <= 1;
            clk_counter_xdir <= 0;
        end
        else
        begin
            now_move_xdir <= 0;
            clk_counter_xdir <= clk_counter_xdir + 1;
        end

        if(clk_counter_ydir == clk_counter_period_ydir - 1)
        begin
            now_move_ydir <= 1;
            clk_counter_ydir <= 0;
        end
        else
        begin
            now_move_ydir <= 0;
            clk_counter_ydir <= clk_counter_ydir + 1;
        end

    end

    always @ (posedge clk)
    begin
        /* now suspended
        //Changing the reset frequency of clk_counter_period, hence animation speed according to y position of ball
        if( y <= 96 )
            clk_counter_period_ydir <= 24999999;
        else if( y > 96 & y <= 142)
            clk_counter_period_ydir <= 16666666;
        else if( y > 142 & y <= 188)
            clk_counter_period_ydir <= 12499999;
        else if( y > 188  y <= 234)
            clk_counter_period_ydir <= 9999999;
         else if( y >  234)
            clk_counter_period_ydir <= 8333333;
            */

        //Maybe i increase or decrease the period according to whether the ball is moving up or down
    end

    always @ (posedge clk)
    begin

        if (rst)  // on reset return to starting position
        begin
            x <= IX;
            y <= IY;
            x_dir <= IX_DIR;
            y_dir <= IY_DIR;
        end

        if(now_move_xdir)
        begin
            //x <= (x_dir) ? x + 1 : x - 1;  // old
            if(x_dir == 1)
                x <= x - 1;
            if(x_dir == 2)
                x <= x + 1;
        end

        if(now_move_ydir)
        begin
            //y <= (y_dir) ? y - 1 : y + 1;  // old
            if(y_dir == 1)
                y <= y - 1;
            if(y_dir == 2)
                y <= y + 1;
        end

        if(now_move_xdir | now_move_ydir)
        begin

            if(y >= uwy)
                y_dir <= 2;
            if(x <= lwx)
                x_dir <= 2;
            if(x >= rwx)
                x_dir <= 1;

        end


        /*
        if (now_move)
        begin

            /////// initially there is no collision detection EXAMPLE
            
            if (x <= H_SIZE + 1)  // edge of square is at left of screen
                x_dir <= 1;  // change direction to right
            if (x >= (D_WIDTH - H_SIZE - 1))  // edge of square at right
                x_dir <= 0;  // change direction to left
            if (y <= H_SIZE + 1)  // edge of square at top of screen
                y_dir <= 1;  // change direction to down
            if (y >= (D_HEIGHT - H_SIZE - 1))  // edge of square at bottom
                y_dir <= 0;  // change direction to up
            

        end
        */
    end
endmodule
