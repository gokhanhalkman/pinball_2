
module flip #(
    initial_left_flip_mobile_point_y = 290,
    initial_right_flip_mobile_point_y = 290,
    min_left_flip_mobile_point_y = 270,
    min_right_flip_mobile_point_y = 270,
    flip_velocity = 1999999                     // 50 pixels per 2 seconds, provided clock is 50MHz
    )
    (
    input wire clk,                     // base clock
    input wire rst,                     // reset: returns animation to starting position
    input wire move_left_flip,          // increase of decrease the y point
    input wire move_right_flip,         // increase of decrease the y point
    output wire [31:0] mobile_y_left,
    output wire [31:0] mobile_y_right
    );

    reg [31:0] current_point_left = initial_left_flip_mobile_point_y;
    reg [31:0] current_point_right = initial_right_flip_mobile_point_y;

    assign mobile_y_left = current_point_left;
    assign mobile_y_right = current_point_right;

    integer clk_counter = 0;
    reg now_move;

    always @ (posedge clk)
    begin
        // When will the points move? The number of clock cycles to be waited before next move is dynamically determined
        if(clk_counter == flip_velocity)
        begin
            now_move <= 1;
            clk_counter <= 0;
        end
        else
        begin
            now_move <= 0;
            clk_counter <= clk_counter + 1;
        end

    end

    always @ (posedge clk)
    begin
        if(rst)
        begin
            current_point_left <= initial_left_flip_mobile_point_y;
            current_point_right <= initial_right_flip_mobile_point_y;
        end

        if ( now_move & move_left_flip )
            if(current_point_left >= min_left_flip_mobile_point_y)
                current_point_left <= current_point_left - 1;
        else if ( now_move & ~move_left_flip )
            if(current_point_left <= initial_left_flip_mobile_point_y)
                current_point_left <= current_point_left + 1;


        if ( now_move & move_right_flip )
            if(current_point_right >= min_right_flip_mobile_point_y)
                current_point_right <= current_point_right - 1;
        else if ( now_move & ~move_right_flip )
            if(current_point_right <= initial_right_flip_mobile_point_y)
                current_point_right <= current_point_right + 1;
    end

endmodule 
