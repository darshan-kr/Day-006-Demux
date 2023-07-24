module demux(
  input I,
  input [2:0]sel,
  output reg [7:0]y=0);
  
  always@(*)
    begin
      case(sel)
        0:y[0]=I;
        1:y[1]=I;
        2:y[2]=I;
        3:y[3]=I;
        4:y[4]=I;
        5:y[5]=I;
        6:y[6]=I;
        7:y[7]=I;
        default:y[0]=I;
      endcase
  
      end
  endmodule
