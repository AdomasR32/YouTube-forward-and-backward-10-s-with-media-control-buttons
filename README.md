# YouTube 10s Skip With Media Keys  
Lenovo IdeaPad 5 Pro (16ACH6) – Windows 11

## The problem

By default, media forward and backward buttons skips to the next video when playing playlist on YouTube.  
When single video is played (without playlist), buttons don't have function.

##### Lenovo IdeaPad 5 Pro (16ACH6) keyboard layout

![Lenovo IdeaPad 5 Pro Keyboard Layout](keyboard-layout.png)

Wanted to be able to forward or backward YouTube video by 10s with media controls buttons, especially when paying YouTube in the second screen. Spotify desktop app must continue working normally (skip tracks)

---

## Solution

As there was no real working solution (chrome extensions) decided to write a script for AutoHotKey.

The media forward and backward buttons now are able to skip YouTube video by 10s even when the YouTube window is not active. When playing Spotify (on desktop app) buttons works normally (for song skipping).

---

## How to use

1) Instal AutoHotKey V1  
2) Save script as `youtube-media.ahk`  
3) Run script  
4) (Optional) Add to Windows Startup:

- `Win + R`
- `shell:startup`
- Place script inside
