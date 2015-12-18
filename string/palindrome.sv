program main;
  string str = "madam";
  string str1 = str;

  initial begin
    foreach(str[i])
      str1[str.len-1-i] = str[i];
    $display("str1: %s",str1);
    if (str == str1)
      $display("string is palindrome\n");
    else
      $display("string is not palindrome\n");
  end
endprogram
