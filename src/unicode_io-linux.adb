with Ada.Text_IO;

package body Unicode_IO.Linux is

   procedure Put
     (Text : String)
   is
   begin
      Ada.Text_IO.Put(Text);
   end Put;


   procedure Put_Line
     (Text : String)
   is
   begin
      Ada.Text_IO.Put_Line(Text);
   end Put_Line;


   procedure New_Line
   is
   begin
      Ada.Text_IO.New_Line;
   end New_Line;

end Unicode_IO.Linux;
