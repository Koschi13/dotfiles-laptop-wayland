# Additional information

## Microphone Q9-1

### Fixing the sample rate

As root:
```
$ sed 's/; default-sample-rate = 44100/default-sample-rate = 48000/g' -i /etc/pulse/daemon.conf
```

### Setting correct mode

Edit `/etc/pulse/default.pa`
```
# Q9-1
load-module module-remap-source source_name=record_mono master=alsa_input.usb-CMEDIA_Q9-1-00.mono-fallback master_channel_map=front-left channel_map=mono
set-default-source record_mono
```

### Applying changes
```
$ pulseaudio -k
$ pulseaudio --start
```

