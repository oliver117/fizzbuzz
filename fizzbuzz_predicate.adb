-- Note: untested

with Ada.Text_IO;

procedure FizzBuzz_Predicate is
   subtype Div_3 is Integer
      with Dynamic_Predicate => Div_3 mod 3 = 0;
   subtype Div_5 is Integer
      with Dynamic_Predicate => Div_5 mod 5 = 0;
begin
   for i in Integer range 1 .. 99 loop
      if i in Div_3 and i in Div_5 then
         Ada.Text_IO.Put_Line ("FizzBuzz");
      elsif i in Div_3 then
         Ada.Text_IO.Put_Line ("Fizz");
      elsif i in Div_5 then
         Ada.Text_IO.Put_Line ("Buzz");
      else
         Ada.Text_IO.Put_Line (Integer'Image (i));
      end if;
   end loop;
end FizzBuzz_Predicate;
