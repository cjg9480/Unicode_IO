with Unicode_IO.Linux;

package body Unicode_IO is

   procedure Put (Item : String) is
   begin
      Unicode_IO.Linux.Put (Item);
   end Put;

   procedure Put_Line (Item : String) is
   begin
      Unicode_IO.Linux.Put_Line (Item);
   end Put_Line;

   procedure New_Line is
   begin
      Unicode_IO.Linux.New_Line;
   end New_Line;

   procedure Put (Item : Integer) is
   begin
      Put (Integer'Image (Item));
   end Put;

   procedure Put_Line (Item : Integer) is
   begin
      Put (Item);
      New_Line;
   end Put_Line;

   procedure Put (Item : Boolean) is
   begin
      Put (Boolean'Image (Item));
   end Put;

   procedure Put_Line (Item : Boolean) is
   begin
      Put (Item);
      New_Line;
   end Put_Line;

   procedure Put (Item : Character) is
   begin
      Put (String'(1 => Item));
   end Put;

   procedure Put_Line (Item : Character) is
   begin
      Put (Item);
      New_Line;
   end Put_Line;

   procedure Put (Item : Float) is
   begin
      Put (Float'Image (Item));
   end Put;

   procedure Put_Line (Item : Float) is
   begin
      Put (Item);
      New_Line;
   end Put_Line;

   procedure Put (Item : Long_Integer) is
   begin
      Put (Long_Integer'Image (Item));
   end Put;

   procedure Put_Line (Item : Long_Integer) is
   begin
      Put (Item);
      New_Line;
   end Put_Line;

   procedure Put (Item : Long_Float) is
   begin
      Put (Long_Float'Image (Item));
   end Put;

   procedure Put_Line (Item : Long_Float) is
   begin
      Put (Item);
      New_Line;
   end Put_Line;

end Unicode_IO;