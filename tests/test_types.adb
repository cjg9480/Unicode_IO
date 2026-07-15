with Unicode_IO;

procedure Test_Types is
begin
   Unicode_IO.Put_Line ("=== Type Test ===");

   Unicode_IO.Put (Integer'Image (2026));
   Unicode_IO.New_Line;

   Unicode_IO.Put (Boolean'Image (True));
   Unicode_IO.New_Line;

   Unicode_IO.Put (Boolean'Image (False));
   Unicode_IO.New_Line;

   Unicode_IO.Put (Float'Image (3.14159));
   Unicode_IO.New_Line;

   Unicode_IO.Put (Character'Image ('A'));
   Unicode_IO.New_Line;

   Unicode_IO.Put ("Unicode_IO");
   Unicode_IO.New_Line;
end Test_Types;