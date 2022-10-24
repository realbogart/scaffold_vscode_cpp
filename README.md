# scaffold_vscode_cpp
Template vscode cpp project for quick prototyping.

Navigate to a newly created folder and run this in a bash shell:
```bash
git clone https://github.com/realbogart/scaffold_vscode_cpp.git . && rm -rf .git && rm README.md && git init && code .
```

Change the project name in `settings.json`:
```CMake
set(PROJECT_NAME "scaffold")
```

In order for the `Build & Run Ninja Clang` task to work, update `ninja_output_binary_name`:
```json
{
    "ninja_output_binary_name": "scaffold",
    ...
}

```
