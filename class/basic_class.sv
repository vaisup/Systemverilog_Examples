program main;
  class A;
    int data;

    function new (int d);
      data = d;
    endfunction: new
    
    function int sqr();
      return data * data;
    endfunction: sqr
  endclass: A

  class B;
    int data;

    function void input_data(int d);
      data = d;
    endfunction: input_data
    
    function int sqr();
      return data * data;
    endfunction: sqr
  endclass: B

  A a;
  B b;

  initial begin
    a = new(5);
    
    $display("Value of a: %0d", a);
    $display("square of 5: %0d",a.sqr());

    b = new();
    b.input_data(5);
    $display("Value of b: %0d", b);
    $display("Square of 5: %0d",b.sqr());
  end
endprogram
