:running
%run%
set ran=%run%
:check
if not "%ran%"=="%run%" goto :running
call command.bat
goto :check