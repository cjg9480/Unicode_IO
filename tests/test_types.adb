with Unicode_IO;

procedure Test_Types is
begin
   --Unicode_IO.Put_Line ("=== Integer Test ===");

   --Unicode_IO.Put (2026);
   --Unicode_IO.New_Line;

   --Unicode_IO.Put_Line (12345);

   --Unicode_IO.Put_Line ("=== Boolean Test ===");

   --Unicode_IO.Put_Line (True);
   --Unicode_IO.Put_Line (False);

   --Unicode_IO.Put_Line ("=== Character Test ===");

   --Unicode_IO.Put_Line ('A');
   --Unicode_IO.Put_Line ('Z');
   --Unicode_IO.Put_Line ('!');

   --Unicode_IO.Put_Line ("=== Float Test ===");

   --Unicode_IO.Put_Line (3.14159);
   --Unicode_IO.Put_Line (-1.25);
   --Unicode_IO.Put_Line (0.0);

   --Unicode_IO.Put_Line ("=== Long_Integer Test ===");

   --Unicode_IO.Put_Line (Long_Integer'(123456789012345678));
   --Unicode_IO.Put_Line (Long_Integer'(-98765432109876543));

   Unicode_IO.Put_Line ("=== Long_Float Test ===");

   Unicode_IO.Put_Line
      (Long_Float'(3.1415926535897932384626433832795));

   Unicode_IO.Put_Line
      (Long_Float'(-2.7182818284590452353602874713527));
end Test_Types;