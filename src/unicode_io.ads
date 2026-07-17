package Unicode_IO is

   procedure Put (Item : String);
   procedure Put (Item : Character);
   procedure Put (Item : Boolean);
   procedure Put (Item : Integer);
   procedure Put (Item : Long_Integer);
   procedure Put (Item : Float);
   procedure Put (Item : Long_Float);

   procedure Put_Line (Item : String);
   procedure Put_Line (Item : Character);
   procedure Put_Line (Item : Boolean);
   procedure Put_Line (Item : Integer);
   procedure Put_Line (Item : Long_Integer);
   procedure Put_Line (Item : Float);
   procedure Put_Line (Item : Long_Float);

   -- v0.5 Wide Unicode support
   procedure Put_Wide
      (Item : Wide_Wide_String);

   procedure Put_Line_Wide
      (Item : Wide_Wide_String);

   procedure Put_Wide
      (Item : Wide_Wide_Character);

   procedure Put_Line_Wide
      (Item : Wide_Wide_Character);

   procedure New_Line;

end Unicode_IO;