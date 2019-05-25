module random_target_initialization(
    input wire clk,
    output wire [11:0] red_circle_a_x,
    output wire [11:0] red_circle_a_y,
    output wire [11:0] red_circle_b_x,
    output wire [11:0] red_circle_b_y,
    output wire [11:0] green_circle_a_x,
    output wire [11:0] green_circle_a_y,
    output wire [11:0] green_circle_b_x,
    output wire [11:0] green_circle_b_y,
    output wire [11:0] purple_hexagon_a_x,
    output wire [11:0] purple_hexagon_a_y,
    output wire [11:0] purple_hexagon_b_x,
    output wire [11:0] purple_hexagon_b_y

);

    reg has_assigned_random_number = 0;
     
     reg[11:0] rcax = 0;
     reg[11:0] rcay = 0;
     reg[11:0] rcbx = 0;
     reg[11:0] rcby = 0;

     reg[11:0] gcax = 0;
     reg[11:0] gcay = 0;
     reg[11:0] gcbx = 0;
     reg[11:0] gcby = 0;
     
     reg[11:0] phax = 0;
     reg[11:0] phay = 0;
     reg[11:0] phbx = 0;
     reg[11:0] phby = 0;
     
     assign red_circle_a_x = rcax;
     assign red_circle_a_y = rcay;
     assign red_circle_b_x = rcbx;
     assign red_circle_b_y = rcby;

     assign green_circle_a_x = gcax;
     assign green_circle_a_y = gcay;
     assign green_circle_b_x = gcbx;
     assign green_circle_b_y = gcby;

     assign purple_hexagon_a_x = phax;
     assign purple_hexagon_a_y = phay;
     assign purple_hexagon_b_x = phbx;
     assign purple_hexagon_b_y = phby;

    always @ (posedge clk)
    begin
        if(~has_assigned_random_number)
            begin
                // unfortunately there is no random assignment for now
                rcax = 240;
                rcay = 100;
                rcby = 320;
                rcby = 100;
                gcax = 400;
                gcay = 100;
                gcbx = 240;
                gcby = 150;
                phax = 320;
                phay = 150;
                phbx = 400;
                phby = 150;
                has_assigned_random_number = 1;
            end
    end




endmodule 
