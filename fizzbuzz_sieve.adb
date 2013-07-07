with Ada.Text_IO;

procedure FizzBuzz_Sieve is
   type Sieve is array (Integer range <>) of Boolean;
   Sieve3 : Sieve (1 .. 99) := (others => False);
   Sieve5 : Sieve (1 .. 99) := (others => False);
begin
   for i in Sieve3'Range loop
      if i * 3 <= Sieve3'Last then
         Sieve3 (i * 3) := True;
      end if;

      if i * 5 <= Sieve5'Last then
         Sieve5 (i * 5) := True;
      end if;

      if Sieve3 (i) and Sieve5 (i) then
         Ada.Text_IO.Put_Line ("FizzBuzz");
      elsif Sieve3 (i) then
         Ada.Text_IO.Put_Line ("Fizz");
      elsif Sieve5 (i) then
         Ada.Text_IO.Put_Line ("Buzz");
      else
         Ada.Text_IO.Put_Line (Integer'Image (i));
      end if;
   end loop;

end FizzBuzz_Sieve;
