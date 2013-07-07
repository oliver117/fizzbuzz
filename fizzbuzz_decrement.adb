with Ada.Text_IO;

procedure FizzBuzz_Decrement is
   Counter_3 : Integer := 3;
   Counter_5 : Integer := 5;
begin
   for i in Integer range 1 .. 99 loop
      Counter_3 := Counter_3 - 1;
      Counter_5 := Counter_5 - 1;

      if Counter_3 = 0 and Counter_5 = 0 then
         Ada.Text_IO.Put_Line ("FizzBuzz");
      elsif Counter_3 = 0 then
         Ada.Text_IO.Put_Line ("Fizz");
      elsif Counter_5 = 0 then
         Ada.Text_IO.Put_Line ("Buzz");
      else
         Ada.Text_IO.Put_Line (Integer'Image (i));
      end if;

      if Counter_3 = 0 then
         Counter_3 := 3;
      end if;

      if Counter_5 = 0 then
         Counter_5 := 5;
      end if;
   end loop;
end FizzBuzz_Decrement;
