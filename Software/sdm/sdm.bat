@ECHO OFF

:: Get LBITS ::
IF %PROCESSOR_ARCHITECTURE% == AMD64 (
    SET LBITS=64
) ELSE (
    SET LBITS=32
)

:: Get paths ::
SET SDM_PATH=%~DP0%
SET BIN_PATH=%SDM_PATH%bin\windows%LBITS%\
SET BIN_COMMAND=%BIN_PATH%sdm_gui.exe
SET UPDATE=%SDM_PATH%update.exe

:: Go! ::
IF "%1" == "" (
    ECHO Starting SDM for Windows %LBITS% bits...
    %BIN_COMMAND%
:while
    IF EXIST %UPDATE% (
        %UPDATE%
        del %UPDATE%
        %BIN_COMMAND%
        GOTO while
    )
) ELSE (
    %BIN_PATH%sdm_parse.exe %*%
)
