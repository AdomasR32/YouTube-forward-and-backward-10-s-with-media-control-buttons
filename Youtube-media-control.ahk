#NoEnv
#InstallKeybdHook
#UseHook
SetTitleMatchMode, 2


; -------- GET YOUTUBE WINDOW --------
GetYouTubeHwnd() {
    WinGet, id, List, ahk_exe chrome.exe
    Loop, %id%
    {
        this_id := id%A_Index%
        WinGetTitle, title, ahk_id %this_id%
        if InStr(title, "YouTube")
            return this_id
    }
    return 0
}


; -------- CHECK IF SPOTIFY PLAYING --------
IsSpotifyPlaying() {
    IfWinExist, ahk_exe Spotify.exe
    {
        WinGetTitle, title, ahk_exe Spotify.exe
        ; When Spotify plays, title contains " - "
        if InStr(title, " - ")
            return true
    }
    return false
}


; -------- MEDIA NEXT --------
Media_Next::

if (IsSpotifyPlaying())
{
    Send, {Media_Next}
}
else
{
    hwnd := GetYouTubeHwnd()
    if (hwnd)
    {
        ControlFocus,, ahk_id %hwnd%
        ControlSend,, l, ahk_id %hwnd%
    }
}

return


; -------- MEDIA PREVIOUS --------
Media_Prev::

if (IsSpotifyPlaying())
{
    Send, {Media_Prev}
}
else
{
    hwnd := GetYouTubeHwnd()
    if (hwnd)
    {
        ControlFocus,, ahk_id %hwnd%
        ControlSend,, j, ahk_id %hwnd%
    }
}

return
