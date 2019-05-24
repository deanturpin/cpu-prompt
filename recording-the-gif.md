Get the window ID.
```bash
$ xwininfo

xwininfo: Please select the window about which you
          would like information by clicking the
          mouse in that window.

xwininfo: Window id: 0x2201f93 "root@big-lad: ~"

  Absolute upper-left X:  86
  Absolute upper-left Y:  205
  Relative upper-left X:  24
  Relative upper-left Y:  86
  Width: 1412
  Height: 1010
  Depth: 32
  Visual: 0x19a
  Visual Class: TrueColor
  Border width: 0
  Class: InputOutput
  Colormap: 0x220000a (not installed)
  Bit Gravity State: NorthWestGravity
  Window Gravity State: NorthWestGravity
  Backing Store State: NotUseful
  Save Under State: no
  Map State: IsViewable
  Override Redirect State: no
  Corners:  +86+205  -1702+205  -1702-585  +86-585
  -geometry 46x16+62+119
```

Record your window.
```bash
recordmydesktop --no-sound --windowid 0x2201f93
```

Convert to GIF.
```bash
ffmpeg -i out.ogv cpu.gif
```

Testing with ```stress```
```bash
sudo apt install stress

while :; do stress --cpu $(( $(nproc) * $RANDOM / 32767 )) --timeout 1; done
```
