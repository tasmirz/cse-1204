module demux(
    input [7:0] data,
    input [1:0] selection,
    output reg [7:0] d0,
    output reg [7:0] d1,
    output reg [7:0] d2,
    output reg [7:0] d3
);
assign data = 8'b11100111;
always @(selection) 
begin
case (selection)  
	2'b00: begin
		d0=data;
		d1= 8'b0;
		d2= 8'b0;
		d3= 8'b00000000;	
	end	 
	2'b01:begin
		d1=data;
		d0= 8'b0;
		d2= 8'b0;
		d3= 8'b00000000;	
	end	 
	2'b10:begin
		d2=data;
		d1= 8'b00000000;
		d0= 8'b00000000;
		d3= 8'b00000000;
	end	 
	2'b11:begin
		d3=data;
		d1= 8'b00000000;
		d2= 8'b00000000;
		d0= 8'b00000000;
	end	 
endcase
end
endmodule
