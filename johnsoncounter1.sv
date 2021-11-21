

module johnson_ctr (
input logic clk, clear, preset,
input logic[3:0] load_cnt,
output logic[3:0] count
);
always@(posedge clk or negedge clear) begin
if(!clear) count <= 4'b0000;
else if(!preset) count <= load_cnt;
else begin
count <= count >> 1;
count[3] <= ~count[0];
end
end
endmodule: johnson_ctr
