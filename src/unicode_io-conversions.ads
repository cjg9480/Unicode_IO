package Unicode_IO.Conversions is

   function To_UTF8
     (Item : Wide_Wide_String)
      return String;

   function To_UTF8
     (Item : Wide_String)
      return String;

   function To_Wide_Wide
     (Item : Wide_String)
      return Wide_Wide_String;

end Unicode_IO.Conversions;
