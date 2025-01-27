%% This function computes the GCD between two numbers using the Eculidian Algorithm
 % Input: (x,y) the two numbers to get GCD between
 % Output: (1) --> gcd
  %        (2) --> a matrix holds the coeffecients from the Eculidian Algorithm
  
function [gcd,mat]=get_gcd(x,y)
  mat = zeros(1,4); %the matrix contains all the coeffecients
 if y>x %Swap
    temp = x;  x=y; y=temp; 
 end
 
 if x==y || rem(x,y)==0
     gcd = y;
     mat = [x y x/y 0];
 else
    q= fix(x/y);
    r=x-y*q;
    row=1;
    
    mat(1,:)=[x y q r]; 

    while r~=0
       x= mat(row,2); y= mat(row,4); 
       q= fix(x/y);   r=x-y*q;
       temp=[x y q r];
       mat = [mat; temp];
      row = row +1;
    end
    
    gcd = mat(row-1,4); %compute the gcd
 end
end