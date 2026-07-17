with Unicode_IO;
with Unicode_IO.Conversions;

procedure Test_Conversion is

   Original : constant Wide_Wide_String :=
     "안녕하세요 😀 🚀";

   UTF8 : constant String :=
     Unicode_IO.Conversions.To_UTF8
       (Original);

   Back : constant Wide_Wide_String :=
     Unicode_IO.Conversions.From_UTF8
       (UTF8);

begin

   Unicode_IO.Put_Line_Wide
     (Back);

end Test_Conversion;