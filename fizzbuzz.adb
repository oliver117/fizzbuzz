with Ada.Text_IO;

procedure FizzBuzz is
begin
   for i in Integer range 1 .. 99 loop
      if i mod 15 = 0 then
         Ada.Text_IO.Put_Line ("FizzBuzz");
      elsif i mod 3 = 0 then
         Ada.Text_IO.Put_Line ("Fizz");
      elsif i mod 5 = 0 then
         Ada.Text_IO.Put_Line ("Buzz");
      else
         Ada.Text_IO.Put_Line (Integer'Image (i));
      end if;
   end loop;
end FizzBuzz;
