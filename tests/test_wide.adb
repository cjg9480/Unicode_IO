with Unicode_IO;

procedure Test_Wide is

begin

   Unicode_IO.Put_Line ("=== Wide_Wide_String Test ===");

   Unicode_IO.Put_Line_Wide
     (Wide_Wide_String'("안녕하세요 Wide_Wide"));

   Unicode_IO.Put_Line_Wide
     (Wide_Wide_String'("😀 🚀 Unicode"));

   Unicode_IO.Put_Line_Wide
      (Wide_Wide_Character'Val (16#1F600#));

   Unicode_IO.Put_Line_Wide
      (Wide_Wide_Character'Val (16#1F680#));
end Test_Wide;
