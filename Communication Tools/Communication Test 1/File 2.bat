:running
%run%
set ran=%run%
:check
if not "%ran%"=="%run%" goto :running
call command.bat
timeout 1 >nul
goto :check