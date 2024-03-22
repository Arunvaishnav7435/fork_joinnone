//SV Topics : Thread
//Problem statement : to use fork join_none block
//======================================

module test;
  initial begin
    fork
    	begin
          	#5;
          $display($time, " inside fork join at 5\n");
    	end
    
    	begin
          	#2;
          $display($time, " inside fork join 2\n");
    	end
    join_none //non blocking, so does not block the execution of subsequent statements
    $display($time, " this starts at 0\n");
  end
endmodule

