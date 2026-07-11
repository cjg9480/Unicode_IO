pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 16.1.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_korean" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#d7562347#;
   pragma Export (C, u00001, "koreanB");
   u00002 : constant Version_32 := 16#b2cfab41#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#9b854977#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#55649021#;
   pragma Export (C, u00004, "unicode_ioB");
   u00005 : constant Version_32 := 16#2d0430b8#;
   pragma Export (C, u00005, "unicode_ioS");
   u00006 : constant Version_32 := 16#61a3f910#;
   pragma Export (C, u00006, "unicode_io__windowsB");
   u00007 : constant Version_32 := 16#bdd3ab3b#;
   pragma Export (C, u00007, "unicode_io__windowsS");
   u00008 : constant Version_32 := 16#9111f9c1#;
   pragma Export (C, u00008, "interfacesS");
   u00009 : constant Version_32 := 16#b9ada65a#;
   pragma Export (C, u00009, "interfaces__cB");
   u00010 : constant Version_32 := 16#62e98794#;
   pragma Export (C, u00010, "interfaces__cS");
   u00011 : constant Version_32 := 16#6f094a22#;
   pragma Export (C, u00011, "ada__exceptionsB");
   u00012 : constant Version_32 := 16#0c4d3096#;
   pragma Export (C, u00012, "ada__exceptionsS");
   u00013 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00013, "adaS");
   u00014 : constant Version_32 := 16#85bf25f7#;
   pragma Export (C, u00014, "ada__exceptions__last_chance_handlerB");
   u00015 : constant Version_32 := 16#c1262c0b#;
   pragma Export (C, u00015, "ada__exceptions__last_chance_handlerS");
   u00016 : constant Version_32 := 16#898beeee#;
   pragma Export (C, u00016, "systemS");
   u00017 : constant Version_32 := 16#7fa0a598#;
   pragma Export (C, u00017, "system__soft_linksB");
   u00018 : constant Version_32 := 16#af37d7ac#;
   pragma Export (C, u00018, "system__soft_linksS");
   u00019 : constant Version_32 := 16#33935a56#;
   pragma Export (C, u00019, "system__secondary_stackB");
   u00020 : constant Version_32 := 16#b379e8af#;
   pragma Export (C, u00020, "system__secondary_stackS");
   u00021 : constant Version_32 := 16#3007a9ef#;
   pragma Export (C, u00021, "system__parametersB");
   u00022 : constant Version_32 := 16#282545b2#;
   pragma Export (C, u00022, "system__parametersS");
   u00023 : constant Version_32 := 16#45553a06#;
   pragma Export (C, u00023, "system__storage_elementsS");
   u00024 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00024, "system__soft_links__initializeB");
   u00025 : constant Version_32 := 16#ac2e8b53#;
   pragma Export (C, u00025, "system__soft_links__initializeS");
   u00026 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00026, "system__stack_checkingB");
   u00027 : constant Version_32 := 16#4ed4fbf8#;
   pragma Export (C, u00027, "system__stack_checkingS");
   u00028 : constant Version_32 := 16#45e1965e#;
   pragma Export (C, u00028, "system__exception_tableB");
   u00029 : constant Version_32 := 16#04a098f7#;
   pragma Export (C, u00029, "system__exception_tableS");
   u00030 : constant Version_32 := 16#bb2e51dc#;
   pragma Export (C, u00030, "system__exceptionsS");
   u00031 : constant Version_32 := 16#c367aa24#;
   pragma Export (C, u00031, "system__exceptions__machineB");
   u00032 : constant Version_32 := 16#8d1d496c#;
   pragma Export (C, u00032, "system__exceptions__machineS");
   u00033 : constant Version_32 := 16#2f7ce883#;
   pragma Export (C, u00033, "system__exceptions_debugB");
   u00034 : constant Version_32 := 16#b985b6bd#;
   pragma Export (C, u00034, "system__exceptions_debugS");
   u00035 : constant Version_32 := 16#1eabfddc#;
   pragma Export (C, u00035, "system__img_intS");
   u00036 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00036, "system__tracebackB");
   u00037 : constant Version_32 := 16#0f111a53#;
   pragma Export (C, u00037, "system__tracebackS");
   u00038 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00038, "system__traceback_entriesB");
   u00039 : constant Version_32 := 16#41975162#;
   pragma Export (C, u00039, "system__traceback_entriesS");
   u00040 : constant Version_32 := 16#ef93d144#;
   pragma Export (C, u00040, "system__traceback__symbolicB");
   u00041 : constant Version_32 := 16#3e2e1203#;
   pragma Export (C, u00041, "system__traceback__symbolicS");
   u00042 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00042, "ada__containersS");
   u00043 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00043, "ada__exceptions__tracebackB");
   u00044 : constant Version_32 := 16#47e3d2a3#;
   pragma Export (C, u00044, "ada__exceptions__tracebackS");
   u00045 : constant Version_32 := 16#0978786d#;
   pragma Export (C, u00045, "system__bounded_stringsB");
   u00046 : constant Version_32 := 16#fe76cff7#;
   pragma Export (C, u00046, "system__bounded_stringsS");
   u00047 : constant Version_32 := 16#d77133d3#;
   pragma Export (C, u00047, "system__crtlB");
   u00048 : constant Version_32 := 16#aa1e2084#;
   pragma Export (C, u00048, "system__crtlS");
   u00049 : constant Version_32 := 16#71c7401b#;
   pragma Export (C, u00049, "system__dwarf_linesB");
   u00050 : constant Version_32 := 16#69a115c3#;
   pragma Export (C, u00050, "system__dwarf_linesS");
   u00051 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00051, "ada__charactersS");
   u00052 : constant Version_32 := 16#75913d83#;
   pragma Export (C, u00052, "ada__characters__handlingB");
   u00053 : constant Version_32 := 16#729cc5db#;
   pragma Export (C, u00053, "ada__characters__handlingS");
   u00054 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00054, "ada__characters__latin_1S");
   u00055 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00055, "ada__stringsS");
   u00056 : constant Version_32 := 16#9a8aed35#;
   pragma Export (C, u00056, "ada__strings__mapsB");
   u00057 : constant Version_32 := 16#879d83f1#;
   pragma Export (C, u00057, "ada__strings__mapsS");
   u00058 : constant Version_32 := 16#d55f7fbe#;
   pragma Export (C, u00058, "system__bit_opsB");
   u00059 : constant Version_32 := 16#447842d2#;
   pragma Export (C, u00059, "system__bit_opsS");
   u00060 : constant Version_32 := 16#73a191b7#;
   pragma Export (C, u00060, "system__unsigned_typesS");
   u00061 : constant Version_32 := 16#5c2ece6d#;
   pragma Export (C, u00061, "ada__strings__maps__constantsS");
   u00062 : constant Version_32 := 16#f9910acc#;
   pragma Export (C, u00062, "system__address_imageB");
   u00063 : constant Version_32 := 16#286773d4#;
   pragma Export (C, u00063, "system__address_imageS");
   u00064 : constant Version_32 := 16#bc35044b#;
   pragma Export (C, u00064, "system__img_address_32S");
   u00065 : constant Version_32 := 16#9115a5c9#;
   pragma Export (C, u00065, "system__img_address_64S");
   u00066 : constant Version_32 := 16#d2d62200#;
   pragma Export (C, u00066, "system__img_unsS");
   u00067 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00067, "system__ioB");
   u00068 : constant Version_32 := 16#17c919a1#;
   pragma Export (C, u00068, "system__ioS");
   u00069 : constant Version_32 := 16#264c804d#;
   pragma Export (C, u00069, "system__mmapB");
   u00070 : constant Version_32 := 16#3627bde4#;
   pragma Export (C, u00070, "system__mmapS");
   u00071 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00071, "ada__io_exceptionsS");
   u00072 : constant Version_32 := 16#eabc4cdd#;
   pragma Export (C, u00072, "system__mmap__os_interfaceB");
   u00073 : constant Version_32 := 16#52ab6463#;
   pragma Export (C, u00073, "system__mmap__os_interfaceS");
   u00074 : constant Version_32 := 16#861c956a#;
   pragma Export (C, u00074, "system__os_libB");
   u00075 : constant Version_32 := 16#b75e9030#;
   pragma Export (C, u00075, "system__os_libS");
   u00076 : constant Version_32 := 16#94d23d25#;
   pragma Export (C, u00076, "system__atomic_operations__test_and_setB");
   u00077 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00077, "system__atomic_operations__test_and_setS");
   u00078 : constant Version_32 := 16#4ee894cb#;
   pragma Export (C, u00078, "system__atomic_operationsS");
   u00079 : constant Version_32 := 16#553a519e#;
   pragma Export (C, u00079, "system__atomic_primitivesB");
   u00080 : constant Version_32 := 16#b3cac880#;
   pragma Export (C, u00080, "system__atomic_primitivesS");
   u00081 : constant Version_32 := 16#14fb286b#;
   pragma Export (C, u00081, "system__case_utilB");
   u00082 : constant Version_32 := 16#57730f84#;
   pragma Export (C, u00082, "system__case_utilS");
   u00083 : constant Version_32 := 16#8b956324#;
   pragma Export (C, u00083, "system__case_util_nssB");
   u00084 : constant Version_32 := 16#ece46ac4#;
   pragma Export (C, u00084, "system__case_util_nssS");
   u00085 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00085, "system__stringsB");
   u00086 : constant Version_32 := 16#1209eef6#;
   pragma Export (C, u00086, "system__stringsS");
   u00087 : constant Version_32 := 16#8d759e14#;
   pragma Export (C, u00087, "system__object_readerB");
   u00088 : constant Version_32 := 16#851f7bf7#;
   pragma Export (C, u00088, "system__object_readerS");
   u00089 : constant Version_32 := 16#da778bc3#;
   pragma Export (C, u00089, "system__val_lliS");
   u00090 : constant Version_32 := 16#16705b28#;
   pragma Export (C, u00090, "system__val_lluS");
   u00091 : constant Version_32 := 16#0d1904b9#;
   pragma Export (C, u00091, "system__val_utilB");
   u00092 : constant Version_32 := 16#65200ccd#;
   pragma Export (C, u00092, "system__val_utilS");
   u00093 : constant Version_32 := 16#382ef1e7#;
   pragma Export (C, u00093, "system__exception_tracesB");
   u00094 : constant Version_32 := 16#65138788#;
   pragma Export (C, u00094, "system__exception_tracesS");
   u00095 : constant Version_32 := 16#a52f52d5#;
   pragma Export (C, u00095, "system__win32S");
   u00096 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00096, "system__wch_conB");
   u00097 : constant Version_32 := 16#5088cd8d#;
   pragma Export (C, u00097, "system__wch_conS");
   u00098 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00098, "system__wch_stwB");
   u00099 : constant Version_32 := 16#7d99e18c#;
   pragma Export (C, u00099, "system__wch_stwS");
   u00100 : constant Version_32 := 16#7cd63de5#;
   pragma Export (C, u00100, "system__wch_cnvB");
   u00101 : constant Version_32 := 16#564807fd#;
   pragma Export (C, u00101, "system__wch_cnvS");
   u00102 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00102, "system__wch_jisB");
   u00103 : constant Version_32 := 16#e3ff65d7#;
   pragma Export (C, u00103, "system__wch_jisS");
   u00104 : constant Version_32 := 16#a56a70fa#;
   pragma Export (C, u00104, "system__memoryB");
   u00105 : constant Version_32 := 16#911f72f4#;
   pragma Export (C, u00105, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.case_util_nss%s
   --  system.case_util_nss%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.crtl%b
   --  system.storage_elements%s
   --  system.img_address_32%s
   --  system.img_address_64%s
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.img_int%s
   --  system.img_uns%s
   --  system.traceback%s
   --  system.traceback%b
   --  ada.characters.handling%s
   --  system.atomic_operations.test_and_set%s
   --  system.case_util%s
   --  system.os_lib%s
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.bounded_strings%s
   --  system.bounded_strings%b
   --  system.case_util%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.win32%s
   --  ada.characters.handling%b
   --  system.atomic_operations.test_and_set%b
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.object_reader%s
   --  system.object_reader%b
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  unicode_io%s
   --  unicode_io.windows%s
   --  unicode_io.windows%b
   --  unicode_io%b
   --  korean%b
   --  END ELABORATION ORDER

end ada_main;
