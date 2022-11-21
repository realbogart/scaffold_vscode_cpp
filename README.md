Quickly create the scaffolding for a [vscode](https://code.visualstudio.com/) C++ project using [CMake](https://cmake.org/).

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
TODO