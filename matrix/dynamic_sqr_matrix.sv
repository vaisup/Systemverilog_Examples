class A; 
    int matrix[][]; 
    int n;
  
  function new(int n);
      matrix = new[n]; 
      for(int i=0; i<n; i++)begin 
        matrix[i] = new[n]; 
      end 
  endfunction
  
  function void print();
    $display("Matrix: %p",matrix);
  endfunction:print
endclass

program main;
  A a;
    initial begin
      a = new(5);
      a.print();
    end
endprogram
