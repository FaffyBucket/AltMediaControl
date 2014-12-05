/*
************************************************************************************************
* Version:        BETA                                                                         *
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
; NEED TO CREATE A NEW ICON Menu, Tray, Icon, K.ico


!.::Media_Next
!,::Media_Prev
!/::Media_Play_Pause

!=::Volume_Up
!-::Volume_Down
!0::Volume_Mute
