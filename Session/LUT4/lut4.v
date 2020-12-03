`timescale 1ns / 1ps

module lut4 (
    input wire [3:0] in,
    output reg [0:0] out,

    input wire [0:0] cfg_clk,
    input wire [0:0] cfg_e,
    input wire [0:0] cfg_we,
    input wire [0:0] cfg_i
    );

    reg [15:0] cfg_d;
    reg [3:0] internal_in;

    initial begin
        internal_in = 4'b0;
    end

    always @* begin
        internal_in = in;

        if (in[0] === 1'bx) begin
            internal_in[0] = 1'b0;
        end
        if (in[1] === 1'bx) begin
            internal_in[1] = 1'b0;
        end
        if (in[2] === 1'bx) begin
            internal_in[2] = 1'b0;
        end
        if (in[3] === 1'bx) begin
            internal_in[3] = 1'b0;
        end
    end

    always @* begin
        if (cfg_e) begin        // avoid pre-programming oscillating
            out = 1'b0;
        end else begin
            case (internal_in)  
                4'd0: out = cfg_d[0];
                4'd1: out = cfg_d[1];
                4'd2: out = cfg_d[2];
                4'd3: out = cfg_d[3];
                4'd4: out = cfg_d[4];
                4'd5: out = cfg_d[5];
                4'd6: out = cfg_d[6];
                4'd7: out = cfg_d[7];
                4'd8: out = cfg_d[8];
                4'd9: out = cfg_d[9];
                4'd10: out = cfg_d[10];
                4'd11: out = cfg_d[11];
                4'd12: out = cfg_d[12];
                4'd13: out = cfg_d[13];
                4'd14: out = cfg_d[14];
                4'd15: out = cfg_d[15];
            endcase
        end
    end

    wire [16:0] cfg_d_next;

    always @(posedge cfg_clk) begin
        if (cfg_e && cfg_we) begin
            cfg_d <= cfg_d_next;
        end
    end

    assign cfg_d_next = {cfg_d, cfg_i};

endmodule 