Quickly create the scaffolding for a [vscode](https://code.visualstudio.com/) C++ project using [CMake](https://cmake.org/).

## 0. Prerequisites
Requires the following to be installed and available in your PATH:
* [git](https://git-scm.com/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [CMake](https://cmake.org/)

And these are optional:
* [Ninja](https://ninja-build.org/)
* [Clang](https://clang.llvm.org/)

## 1. Create the scaffolding
Navigate to a newly created folder and run this in a bash shell:
```bash
git clone https://github.com/realbogart/scaffold_vscode_cpp.git . && rm -rf .git && rm README.md && git init && code .
```

## 2. Update project settings
Change the project name in `settings.json`:
```CMake
set(PROJECT_NAME "scaffold")
```

In order for the `Build & Run Ninja Clang` task to work, update `ninja_output_binary_name` in `.vscode/settings.json`:
```json
{
    "ninja_output_binary_name": "scaffold",
    ...
}

```

## 3. Build
### Option 1 - Using CMake commands in a shell
```bash
cmake . -B build/vscode_cmake
cmake --build build/vscode_cmake
```

### Option 2 - Using Ninja build task
Press `Ctrl+Shift+B` to invoke the default build task `Build & Run Ninja Clang`.

### Option 3 - Using vscode CMake extension 
* Press `Ctrl+Shift+P` and run `CMake: Delete Cache and Reconfigure`.
* Press `Ctrl+Shift+P` and run `CMake: Build Target`