with Ada.Text_IO;

package body Unicode_IO.Platform is

   procedure Put (Item : String) is
   begin
      Ada.Text_IO.Put (Item);
   end Put;

   procedure Put (Item : Wide_String) is
   begin
      Ada.Text_IO.Put_Line
         ("[Wide_String stub]");
   end Put;

   procedure Put (Item : Wide_Wide_String) is
   begin
      Ada.Text_IO.Put_Line
         ("[Wide_Wide_String stub]");
   end Put;

   procedure New_Line is
   begin
      Ada.Text_IO.New_Line;
   end New_Line;

end Unicode_IO.Platform;
