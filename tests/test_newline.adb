with Unicode_IO;

procedure Test_Newline is
begin
   Unicode_IO.Put_Line ("Line 1");
   Unicode_IO.New_Line;
   Unicode_IO.New_Line;
   Unicode_IO.Put_Line ("Line 2");
end Test_Newline;