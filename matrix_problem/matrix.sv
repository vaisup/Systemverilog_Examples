program main;
  
  initial begin 
	parameter index   = 7;

    int matrix[index][index];
    int k                   = index/2;
  	int row                 = 0;
  	int col                 = 0;
  	int count               = 1;
  	int num                 = 0;
	int num_of_cells        = index * index;

    for(int n = 1, m = 2; num < num_of_cells; n=n+2, m=m+2) begin
      repeat(n) begin
        if(count == 10) begin
          count = 1;
        end
        matrix[k+row][k+col] = count++;
        row --;
        num++;
      end
      
      repeat(n) begin
        if(count == 10) begin
          count = 1;
        end
        matrix[k+row][k+col] = count++;
        col++;
        num++;
      end
      
      repeat(m) begin
        if(count == 10) begin
          count = 1;
        end
        matrix[k+row][k+col] = count++;
       row++;
       num++;
      end
      
      repeat(m) begin
        if(count == 10)begin
          count = 1;
        end
        matrix[k+row][k+col] = count++;
        col--;
        num++;
      end
    end
    
  $display("%p",matrix);
end
  
endprogram
