with Unicode_IO;

procedure Test_Mixed is
begin
   Unicode_IO.Put_Line ("English");
   Unicode_IO.Put_Line ("한국어");
   Unicode_IO.Put_Line ("日本語");
   Unicode_IO.Put_Line ("中文");
   Unicode_IO.Put_Line ("Русский");
   Unicode_IO.Put_Line ("😀🚀");
end Test_Mixed;
