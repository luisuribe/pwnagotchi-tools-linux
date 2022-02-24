ssh -o IdentitiesOnly=yes pi@10.0.0.2 "sudo cp -r /root/handshakes/ /home/pi/handshakes"
mkdir -p handshakes/pcap
scp -o IdentitiesOnly=yes -r pi@10.0.0.2:/home/pi/handshakes/*  ./handshakes/pcap
ssh -o IdentitiesOnly=yes pi@10.0.0.2 "sudo rm -rf /home/pi/handshakes"