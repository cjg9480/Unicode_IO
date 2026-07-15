# Unicode_IO

A small Unicode console I/O library for Ada.

Unicode_IO provides portable Unicode output support for Ada projects.

## Project Status

Current version:

**Unicode_IO v0.4**

Implemented:

* UTF-8 Unicode output
* Korean / Japanese / Chinese support
* Emoji support
* Linux backend
* Windows Unicode backend
* Strong Ada type overloads

---

## Supported Types

Unicode_IO supports:

* `String`
* `Character`
* `Boolean`
* `Integer`
* `Long_Integer`
* `Float`
* `Long_Float`

Example:

```ada
with Unicode_IO;

procedure Hello is
begin
   Unicode_IO.Put_Line ("Hello Ada 😀");
   Unicode_IO.Put_Line (2026);
   Unicode_IO.Put_Line (True);
end Hello;
```

---

## Development Environment

Current test environment:

* OS: Linux (HamoniKR / Ubuntu based)
* Compiler: GNAT
* Build system: GPRBuild

Windows backend development:

* OS: Windows 11
* Shell: MSYS2 UCRT64
* Compiler: GNAT 16.1.0

---

## Project Structure

```
Unicode_IO
|
├── src
│   ├── unicode_io.ads
│   ├── unicode_io.adb
│   ├── unicode_io-linux.ads
│   ├── unicode_io-linux.adb
│   ├── unicode_io-platform.ads
│   └── unicode_io-platform.adb
│
├── examples
│
├── tests
│   ├── test_ascii.adb
│   ├── test_korean.adb
│   ├── test_emoji.adb
│   ├── test_mixed.adb
│   ├── test_types.adb
│   └── test_newline.adb
│
└── unicode_io.gpr
```

---

## Build

Library build:

```bash
gprbuild -P unicode_io.gpr
```

Run tests:

```bash
cd tests
gprbuild -P tests.gpr
```

Examples:

```bash
./obj/test_korean
./obj/test_emoji
./obj/test_types
./obj/test_newline
```

---

## Backend Design

Unicode_IO separates the public API from platform implementations.

```
Unicode_IO
      |
      v
Platform Backend
      |
      +---- Linux
      |
      +---- Windows
```

Linux:

* UTF-8 console output
* Ada.Text_IO backend

Windows:

* UTF-8 to UTF-16 conversion
* `MultiByteToWideChar`
* `WriteConsoleW`

Data flow:

```
Ada String (UTF-8)
        |
        v
UTF conversion
        |
        v
Console Unicode output
```

---

## Future Plans

Planned:

* Windows backend refinement
* Wide_Wide_String support
* macOS backend
* Alire package support
* GtkAda integration
* AdaBots integration
* Ada WebAssembly support

Goal:

The same Ada source code should work across platforms.

---

## License

To be decided.
