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

   procedure Put_Line (Item : String) is
   begin
      Ada.Text_IO.Put_Line (Item);
   end Put_Line;

   procedure Put_Error (Item : String) is
   begin
      Ada.Text_IO.Put (Ada.Text_IO.Standard_Error, Item);
   end Put_Error;

   procedure Put_Error_Line (Item : String) is
   begin
      Ada.Text_IO.Put_Line
      (Ada.Text_IO.Standard_Error,
         Item);
   end Put_Error_Line;

end Unicode_IO.Platform;
