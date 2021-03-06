/*
************************************************************************************************
* AltMediaControl                                                                              *
*                                                                                              *
* Version:              1.4 (Version History at the bottom of this script)                     *
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




/*
************************************************************************************************
AltMediaControl Known Issues:
1. When a Windows Explorer window is active, and an icon is selected, the Media_Play_Pause
   command doesn't work. Seems to be a bug in AHK, not this script. Noticed in Windows 8.1
   Enterprise x64 with AHK v1.1.16.05.
2. MediaPlayPause.exe is noticeably slower than MediaPlayPause.ahk. AltMediaControl.exe will
   point to MediaPlayPause.exe, and AltMediaControl.ahk will point to AltMediaControl.exe.


TO DO:
 - 


AltMediaControl Version History:
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