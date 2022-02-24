# pwnagotchi-tools-for-linux

Based on https://github.com/mtagius/pwnagotchi-tools I wrote some scripts to use pwnagetty and generate scripts for linux. Plan is to use it on an EC2 instance (once AWS allows me)

First I download all the handsakes, create a docker container to use pwnagetty and then generate the hashcat scripts 

Steps:

```
./01_get_caps.sh # assuming yout pwnagotchi is on 10.0.0.2
make build; make pwnagetty
./02_generate-hashcat-scripts.py
```

Then copy your `handshakes/` dir to `/handshakes` to the ec2 instance and run any script from `/handshakes/scripts/`. Don't forget to use `/opt/hashcat` as your hashcat dir.