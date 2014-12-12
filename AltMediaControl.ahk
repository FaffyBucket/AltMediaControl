/*
************************************************************************************************
* Version:        0.4 BETA (version history at the bottom of this script)                      *
* AutoHotkey Version: 1.1                                                                      *
* Language:       English                                                                      *
* Platform:       Windows 7, 8                                                                 *
* Author:         www.twitter.com/matthiew                                                     *
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


!.::Media_Next
!,::Media_Prev
!/::Media_Play_Pause

!=::Volume_Up
!-::Volume_Down
!0::Volume_Mute




/*
************************************************************************************************
AltMediaControl known issues:
 - When a Windows Explorer window is active, and "Autohotkey" is the title of that window,
   the Media_Play_Pause command doesn't work. Seems to be a bug in AHK, not this script.
   

TO DO:
 - Compress .psd
 - Compile


AltMediaControl version history:
0.3 - Updated documentation. Found a bug in Media_Play_Pause command.
0.2 - Created AMC.ico.
0.1 - Created the shortcuts.
************************************************************************************************
*/