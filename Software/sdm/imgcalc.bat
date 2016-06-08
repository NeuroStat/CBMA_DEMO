@ECHO OFF

:: Get LBITS ::
IF %PROCESSOR_ARCHITECTURE% == AMD64 (
    SET LBITS=64
) ELSE (
    SET LBITS=32
)

:: Get SDM_PATH ::
SET SDM_PATH=%~DP0%
SET BIN_PATH=%SDM_PATH%bin\windows%LBITS%\

:: Go! ::
%BIN_PATH%imgcalc.exe %*%
