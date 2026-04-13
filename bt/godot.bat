@echo off
set "MSYS2_PATH=C:\msys64"

:: -mingw64: Launches the specific environment you found
:: -where: Sets the starting directory to your Godot folder
:: -c: Runs the build and launch commands
call %MSYS2_PATH%\msys2_shell.cmd -mingw64 -where "C:\Users\divya\work\godot" -c "echo BUILD START && sleep 2 && scons platform=windows arch=x86_64 dev_build=yes d3d12=no -j12 && echo BUILD SUCCESS && sleep 2 && cd bin && ./godot.windows.editor.dev.x86_64.exe || { echo BUILD FAILED; read -p 'Press Enter to exit...' -r; exit 1; }"


timeout -5