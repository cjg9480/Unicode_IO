package Unicode_IO.Conversions is

   function To_UTF8
     (Item : Wide_Wide_String)
      return String;


   function From_UTF8
     (Item : String)
      return Wide_Wide_String;


end Unicode_IO.Conversions;