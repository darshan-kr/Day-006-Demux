module tb;
  reg I;
  reg [2:0]sel;
  wire [7:0]y;
  
  demux d1(I, sel, y);
  
  initial begin
    $monitor("I=%b, sel=%b, y=%b", I, sel, y);
    $dumpfile("dump.vcd"); $dumpvars;
    I = 1'b1;
    repeat(10) begin
      sel = $random;
      #5;
      if(y[sel] == I)
      	$display("correct");
      else
        $display("wrong");
    end
  end
endmodule
