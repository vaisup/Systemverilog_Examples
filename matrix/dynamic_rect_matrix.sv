class A; 
    int matrix[][]; 
    int n,m;
  
  function new(int n,int m);
      matrix = new[n]; 
    for(int i=0; i<n; i++)begin 
      matrix[i] = new[m]; 
      end 
  endfunction
  
  function void print();
    $display("Matrix: %p",matrix);
  endfunction:print
endclass

program main;
  A a;
    initial begin
      a = new(3,4);
      a.print();
    end
endprogram
