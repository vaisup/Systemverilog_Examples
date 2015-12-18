program main;
  string str = "Hello World!";
  string str1 = str;

  initial begin
    foreach(str[i])
      str1[str.len-1-i] = str[i];
    $display("str1: %s",str1);
  end
endprogram
