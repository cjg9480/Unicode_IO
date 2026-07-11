with Unicode_IO.Windows;

package body Unicode_IO is

   procedure Put
     (Text : String)
   is
   begin
      Unicode_IO.Windows.Put(Text);
   end Put;


   procedure Put_Line
     (Text : String)
   is
   begin
      Unicode_IO.Windows.Put_Line(Text);
   end Put_Line;


   procedure New_Line
   is
   begin
      Unicode_IO.Windows.New_Line;
   end New_Line;


end Unicode_IO;