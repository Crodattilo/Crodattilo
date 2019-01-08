@echo off
:strt
color F1
title Crodattilo
echo %date% %time% Crodattilo è stato eseguito>> "%logname%Crodattilo.log"

:type_cmd
title Crodattilo
cls
echo.
echo Digita un comando: 
set/p A=
if %A% == help echo %date% %time% Utente ha chiesto aiuto>> "%logname%Crodattilo.log" && goto :help
if %A% == h goto :help
if %A% == dev goto :dev
if %A% == developer goto :dev
if %A% == date goto :time
if %A% == time goto :time
if %A% == keyboard goto :keyboard
if %A% == kb goto :keyboard
if %A% == osk goto :keyboard
if %A% == version goto :version
if %A% == v goto :version
if %A% == calculator goto :calculator
if %A% == calc goto :calculator
if %A% == power_off goto :power_off
if %A% == shutdown goto :power_off
if %A% == reboot goto :reboot
if %A% == tasks goto :tasks
if %A% == tasklist goto :tasks
if %A% == cmd goto :cmd
if %A% == temp goto :cmd
if %A% == local goto :cmd
if %A% == control_panel goto :control_panel
if %A% == control goto :control_panel
if %A% == task_manager goto :task_manager
if %A% == taskmgr goto :task_manager
if %A% == manage_files goto :manage_files
if %A% == file_manager goto :manage_files
if %A% == files goto :manage_files
if %A% == appdata goto :appdata
if %A% == roaming goto :appdata
if %A% == adtools goto :adtools
if %A% == admin_tools goto :adtools
if %A% == new_folder goto :new_folder
if %A% == folder goto :new_folder
if %A% == pc_info goto :pc_info
if %A% == msinfo32 goto :pc_info
if %A% == open_cd goto :open_cd
if %A% == cd goto :open_cd
if %A% == new_text goto :new_text
if %A% == text goto :new_text
if %A% == browser goto :browser
if %A% == internet goto :browser
if %A% == color goto :color
if %A% == theme goto :color
if %A% == logs goto :logs
if %A% == close goto :close
if %A% == exit goto :close
if %A% == quit goto :close
if %A% == text_bin goto :text_bin

:commandnotfound
cls
echo.
VBScripts\w_cmd.vbs
echo %date% %time% Utente ha digitato comando errato>> "%logname%Crodattilo.log"
goto :help

:help
cls
echo Hai bisogno di aiuto? Ecco la lista di tutti i comandi:
echo.
echo 1)  VERSION.....................per vedere la versione di questo programma
echo 2)  POWER_OFF...................per spegnere il PC
echo 3)  TIME........................per vedere giorno e ora
echo 4)  REBOOT......................per riavviare il PC
echo 5)  PC_INFO.....................per vedere le info del PC in uso
echo 6)  TASKS.......................per vedere l'elenco dei processi attivi
echo 7)  BROWSER.....................per eseguire il browser Links
echo 8)  MANAGE_FILES................per eseguire il file manager
echo 9)  APPDATA.....................per accedere a Roaming
echo 10) ADTOOLS.....................per accedere agli strumenti di amministrazione
echo 11) NEW_FOLDER..................per creare una nuova cartella
echo 12) TASK_MANAGER................per eseguire Gestione Attivita'
echo 13) CONTROL_PANEL...............per eseguire il pannello di controllo
echo 14) CMD.........................per eseguire il Prompt Dei Comandi di Windows
echo 15) CALCULATOR..................per eseguire la calcolatrice
echo 16) KEYBOARD....................per esegure la tastiera virtuale
echo 17) OPEN_CD.....................per aprire il lettore CD
echo 18) NEW_TEXT....................per creare un documento di testo in formato txt
echo 19) TEXT_BIN....................per convertire un testo in codice binario
echo 20) COLOR.......................per sciegliere i colori dell'interfaccia
echo 21) CLOSE.......................per arrestare Crodattilo
echo.
pause>nul
goto :type_cmd

//commands

:version
title Crodattilo - V. a1.0
cls
echo.
VBScripts\version.vbs
echo %date% %time% Utente ha usato "version">> "%logname%Crodattilo.log"
goto :type_cmd

:dev
cls
echo.
VBScripts\dev.vbs
echo %date% %time% Utente ha usato "dev">> "%logname%Crodattilo.log"
start https://www.crodattilodev.altervista.org
goto :type_cmd

:time
title Crodattilo - Ora
cls
echo.
set DATESTAMP=%DATE:~0,2%/%DATE:~3,2%/%DATE:~6,4%
set TIMESTAMP=%TIME:~0,2%:%TIME:~3,2%
echo.
echo Giorno:   %DATESTAMP%
echo Ore:      %TIMESTAMP%
echo %date% %time% Utente ha usato "time">> "%logname%Crodattilo.log"
pause>nul
goto :type_cmd

:calculator
cls
echo.
calc
echo %date% %time% Utente ha usato "calc">> "%logname%Crodattilo.log"
goto :type_cmd

:keyboard
cls
echo.
start osk
echo %date% %time% Utente ha usato "keyboard">> "%logname%Crodattilo.log"
goto :type_cmd

:power_off
cls
echo.
echo Premi un tasto per spegnere il tuo PC.
pause>nul
shutdown -s -t 10 -c Crodattilo
echo Il computer verra' spento in 10 secondi...
echo %date% %time% Utente ha spento il computer>> "%logname%Crodattilo.log"
pause>nul
exit

:reboot
cls
echo.
echo Premi un tasto per riavviare il tuo PC.
pause>nul
shutdown -r -t 10 -c Crodattilo
echo Il computer verra' riavviato in 10 secondi...
echo %date% %time% Utente ha riavviato il computer>> "%logname%Crodattilo.log"
pause>nul
exit

:tasks
title Crodattilo - Tasks
cls
echo.
tasklist
pause>nul
echo %date% %time% Utente ha usato "tasks">> "%logname%Crodattilo.log"
goto :type_cmd

:cmd
cls
echo.
start cmd.exe
echo %date% %time% Utente ha usato "cmd">> "%logname%Crodattilo.log"
goto :type_cmd

:control_panel
cls
echo.
control
echo %date% %time% Utente ha usato "control_panel">> "%logname%Crodattilo.log"
goto :type_cmd

:task_manager
cls
echo.
start taskmgr.exe
echo %date% %time% Utente ha usato "task_manager">> "%logname%Crodattilo.log"
goto :type_cmd

:manage_files
cls
echo.
start explorer.exe
echo %date% %time% Utente ha usato "manage_files">> "%logname%Crodattilo.log"
goto :type_cmd

:appdata
cls
echo.
start %appdata%
echo %date% %time% Utente ha usato "appdata">> "%logname%Crodattilo.log"
goto :type_cmd

:adtools
cls
echo.
control admintools
echo %date% %time% Utente ha usato "adtools">> "%logname%Crodattilo.log"
goto :type_cmd

:new_folder
title Crodattilo - Nuovo
cls
echo Come vuoi chiamare la tua nuova cartella?
set/p H=
mkdir C:\Users\Public\Documents\%H%
cls
echo La cartella e' stata creata con successo!
echo Puoi trovarla nei documenti pubblici.
echo %date% %time% Utente ha usato "new_folder">> "%logname%Crodattilo.log"
pause>nul
goto :type_cmd

:pc_info
cls
echo.
msinfo32
echo %date% %time% Utente ha usato "pc_info">> "%logname%Crodattilo.log"
goto :type_cmd

:open_cd
cls
echo.
VBScripts\Open_CD.vbs
echo %date% %time% Utente ha usato "open_cd">> "%logname%Crodattilo.log"
goto :type_cmd

:new_text
title Crodattilo - Nuovo
cls
echo.
tasks\Text_E.exe
echo %date% %time% Utente ha usato "new_text">> "%logname%Crodattilo.log"
goto :type_cmd

:browser
cls
echo.
echo Sciegli la versione del browser,
echo NORMAL o GRAPHIC:
echo %date% %time% Utente ha usato "browser">> "%logname%Crodattilo.log"
set/p I=
if %I% == normal goto :b
if %I% == graphic goto :b_gui
if %I% == cmds goto :b_cmds
:b_hlp
cls
echo Sciegli il browser NORMAL o quello GRAPHIC!
echo Oppure digita CMDS per vedere i comandi.
pause>nul
goto :browser
:b
cls
echo Links browser commands:
echo.
echo Open URL.......G
echo Back...........Z
echo Go forward.....X
echo Refresh........Ctrl+R
echo Bookmark.......S
echo Quit...........Q
pause>nul
tasks\links\links.exe
goto :type_cmd
:b_gui
cls
echo Links browser commands:
echo.
echo Open URL.......G
echo Back...........Z
echo Go forward.....X
echo Refresh........Ctrl+R
echo Bookmark.......S
echo Quit...........Q
pause>nul
tasks\links\links-g.exe
goto :type_cmd
:b_cmds
cls
notepad tasks\links\KEYS
goto :browser

:text_bin
cls
tasks\Text_Bin.exe
echo %date% %time% Utente ha usato "text_bin">> "%logname%Crodattilo.log"
goto :type_cmd

:close
title Crodattilo - Chiudi
cls
echo Premi un tasto per uscire.
echo %date% %time% Utente ha arrestato Crodattilo>> "%logname%Crodattilo.log"
pause>nul
exit

:logs
cls
echo.
VBScripts\logs.vbs
echo %date% %time% Utente ha usato "logs">> "%logname%Crodattilo.log"
goto :type_cmd

:color
title Crodattilo - Tema
cls
color EC
echo.
echo Sciegli un tema,
echo CHIARO o SCURO:
echo %date% %time% Utente ha usato "color">> "%logname%Crodattilo.log"
set/p B=
if %B% == help goto :clr_hlp
if %B% == chiaro goto :light_theme
if %B% == scuro goto :dark_theme
:clr_hlp
cls
echo Sciegli il tema CHIARO o quello SCURO!
pause>nul
goto :color
:light_theme
cls
color F1
goto :type_cmd
:dark_theme
cls
color 1F
goto :type_cmd