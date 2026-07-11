# Unicode_IO

A small Ada Unicode output library for Windows and future cross-platform Ada projects.

## Project Status

Current version:

**Unicode_IO v0.1 - Windows UTF-16 Console Backend**

Verified:

* UTF-8 Ada String input
* UTF-16 conversion using Windows API
* Unicode console output
* Korean Hangul output
* Emoji output

Tested examples:

```
Hello Ada Unicode!
안녕하세요 세계!
Unicode 🚀 Test
```

---

## Environment

Current development environment:

* OS: Windows 11
* Shell: MSYS2 UCRT64
* Compiler: GNAT 16.1.0
* Build system: GPRBuild

Check compiler:

```bash
gnat --version
```

Check build tool:

```bash
gprbuild --version
```

---

## Project Structure

```
Unicode_IO
|
├── src
│   ├── unicode_io.ads
│   ├── unicode_io.adb
│   ├── unicode_io-windows.ads
│   └── unicode_io-windows.adb
│
├── examples
│   ├── hello.adb
│   ├── korean.adb
│   └── emoji.adb
│
├── tests
│
├── obj
│
└── unicode_io.gpr
```

---

## Build

Example:

```bash
gprbuild -P unicode_io.gpr examples/korean.adb
```

Run:

```bash
./obj/korean.exe
```

Example output:

```
Hello Ada Unicode!
안녕하세요 세계!
```

Emoji test:

```bash
gprbuild -P unicode_io.gpr examples/emoji.adb
```

Output:

```
안녕하세요 Ada 😀
Unicode 🚀 Test
```

---

## Windows Backend

The Windows implementation uses:

* `GetStdHandle`
* `MultiByteToWideChar`
* `WriteConsoleW`

Data flow:

```
Ada String (UTF-8)
        |
        v
MultiByteToWideChar
        |
        v
UTF-16 wchar_array
        |
        v
WriteConsoleW
```

---

## Future Plans

Planned development:

* Linux UTF-8 backend
* Unified Windows/Linux API
* AdaBots integration
* GtkAda integration
* Ada WebAssembly support

Target API:

```ada
with Unicode_IO;

Unicode_IO.Put_Line("Hello Ada 😀");
```

The same source code should work across platforms.

---

## License

To be decided.
