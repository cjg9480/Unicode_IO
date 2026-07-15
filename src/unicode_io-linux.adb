with Ada.Text_IO;

package body Unicode_IO.Linux is

   procedure Put (Text : String) is
   begin
      Ada.Text_IO.Put (Text);
   end Put;

   procedure New_Line is
   begin
      Ada.Text_IO.New_Line;
   end New_Line;

   procedure Put_Line (Text : String) is
   begin
      Put (Text);
      New_Line;
   end Put_Line;

end Unicode_IO.Linux;