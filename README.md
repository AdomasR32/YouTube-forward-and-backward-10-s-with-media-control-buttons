# YouTube-forward-and-backward-10-s-with-media-control-buttons
Enables ±10s skipping on YouTube using hardware media keys (Forward/Back) on Windows 11. Works even when Chrome is on a second screen and preserves normal track skipping behavior for Spotify desktop app. Built with AutoHotkey v1.
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
</head>
<body>

<h1>The problem:</h1>

<p>
By default, media forward and backward buttons skips to the next video when playing playlist on YouTube.
When single video is played (without playlist), buttons don't have function.
</p>

<h4>Lenovo IdeaPad 5 Pro (16ACH6) keyboard layout</h4>

<p>
![[Pasted image 20260220092642.png]]
</p>

<p>
Wanted to be able to forward or backward YouTube video by 10s with media controls buttons,
especially when paying YouTube in the second screen.
Spotify desktop app must continue working normally (skip tracks)
</p>

<h2>Solution</h2>

<p>
As there was no real working solution (chrome extensions) decided to write a script for AutoHotKey.
</p>

<p>
The media forward and backward buttons now are able to skip YouTube video by 10s even when the YouTube window is not active.
When playing Spotify (on desktop app) buttons works normally (for song skipping).
</p>

<h2>How to use</h2>

<ol>
    <li>Instal AutoHotKey V1</li>
    <li>Save script as <code>youtube-media.ahk</code></li>
    <li>Run script</li>
    <li>(Optional) Add to Windows Startup:</li>
</ol>

<ul>
    <li><code>Win + R</code></li>
    <li><code>shell:startup</code></li>
    <li>Place script inside</li>
</ul>

</body>
</html>
