with Ada.Text_IO;

package body Unicode_IO.Platform is

   procedure Put (Item : String) is
   begin
      Ada.Text_IO.Put (Item);
   end Put;

   procedure New_Line is
   begin
      Ada.Text_IO.New_Line;
   end New_Line;

end Unicode_IO.Platform;
