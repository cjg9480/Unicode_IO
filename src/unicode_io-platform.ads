package Unicode_IO.Platform is

   procedure Put (Item : String);
   procedure Put (Item : Wide_String);
   procedure Put (Item : Wide_Wide_String);

   procedure Put_Line (Item : String);
   procedure Put_Error (Item : String);
   procedure Put_Error_Line (Item : String);

   procedure New_Line;

end Unicode_IO.Platform;
