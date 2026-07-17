with Ada.Characters.Conversions;

package body Unicode_IO.Conversions is


   function To_UTF8
     (Item : Wide_Wide_String)
      return String
   is
   begin
      return Ada.Characters.Conversions.To_String (Item);
   end To_UTF8;



   function From_UTF8
     (Item : String)
      return Wide_Wide_String
   is
   begin
      return Ada.Characters.Conversions.To_Wide_Wide_String
        (Item);
   end From_UTF8;


end Unicode_IO.Conversions;