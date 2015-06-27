/*
************************************************************************************************
* AltMediaControl                                                                              *
*                                                                                              *
* Version:              1.6 (Version History at the bottom of this script)                     *
* AutoHotkey Version:   1.1                                                                    *
* Language:             English                                                                *
* Platform:             Windows 7, 8                                                           *
* Author:               www.twitter.com/matthiew                                               *
*                                                                                              *
* Script Function:                                                                             *
* Creates keyboard shortucts for media playback control in Windows.                            *
* 1. Media_Next: "Alt" plus "."                                                                *
* 2. Media_Prev: "Alt" plus ","                                                                *
* 3. Media_Play_Pause: "Alt" plus "/"                                                          *
* 4. Volume_Up: "Alt" plus "="                                                                 *
* 5. Volume_Down: "Alt" plus "-"                                                               *
* 6. Volume_Mute: "Alt" plus "0"                                                               *
************************************************************************************************
*/


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, AMC.ico


!.::Media_Next    ; Assigns "Media_Next" to "Alt"+".".
!,::Media_Prev    ; Assigns "Media_Prev" to "Alt"+",".
!/::    		  ; Assigns "Media_Play_Pause" to "Alt"+"/".
    ; Bypasses the function of Media_Play_Pause in Explorer when a file is selected.
    IfWinActive, ahk_exe explorer.exe
    {
        ;Run MediaPlayPause.exe
        Run MediaPlayPause.ahk
    }
    else
    {
        Send {Media_Play_Pause}
    }
    return

!=::Volume_Up     ; Assigns "Volume_Up" to "Alt"+"=".
!-::Volume_Down   ; Assigns "Volume_Down" to "Alt"+"-".
!0::Volume_Mute   ; Assigns "Volume_Mute" to "Alt"+"0".




/*
************************************************************************************************
AltMediaControl Known Issues:
1. Solved. See Version History (1.5) for details.
2. MediaPlayPause.exe is noticeably slower than MediaPlayPause.ahk. AltMediaControl.exe will
   point to MediaPlayPause.exe, and AltMediaControl.ahk will point to AltMediaControl.ahk.


TO DO:
 - Try "Portability of AutoHotkey.exe" as an alternative to compiling MediaPlayPause.
 - Update PlayMediaPause to reflect solved Known Iissue #1.
 - Update documentation and README.md.
 - Update Keymap.


AltMediaControl Version History:
1.6 - Corrected an error in the documentation.
1.5 - Solved Known Issue #1:
       - "When a Windows Explorer window is active, and an icon is selected, the
         Media_Play_Pause command doesn't work. Seems to be a bug in AHK, not this script.
         Noticed in Windows 8.1 and Windows 7 with AHK v1.1.16.05."
       - Turns out it's a function of Media_Play_Pause. When Explorer is
         the active window it will try to open the selected media file. If the file selected
         is not a media file, it does nothing.
1.4 - Compiled MediaPlayPause.ahk.
    - Updated documentation.
    - Recompiled AltMediaControl.ahk.
1.3 - Created a workaround for Known Issue 1.
1.2 - New Known Issue.
1.1 - Updated Known Issues.
1.0 - Compiled executable. Made a new, more efficient "AMC icon.psd".
0.3 - Updated documentation. Found a bug in Media_Play_Pause command.
0.2 - Created AMC.ico.
0.1 - Created the shortcuts.
************************************************************************************************
*/