program main;
  string str = "Hello World!";
  string str1 = str;

  initial begin
    $display("String length: %0d",str.len);
    for(int i=0; i<str.len; i++) begin
      str1.putc((str.len-1-i),str.getc(i));
    end
      $display("str1: %s",str1);
  end
endprogram
