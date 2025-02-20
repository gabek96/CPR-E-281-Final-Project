module reg_4bit (
    input wire [3:0] data_in,
    input wire write_en,
    input wire clk,
    input wire reset,
    output reg [3:0] data_out
);

always @(posedge clk or posedge reset)
begin

if(reset)
data_out <= 4'b15;
    if (write_en)
        data_out <= data_in;
end

endmodule