build:
	docker build -t pwnagotchi-tools .

shell:
	docker run --rm -it -v $$(pwd)/handshakes:/handshakes pwnagotchi-tools /bin/bash

pwnagetty:
	docker run --rm -it -v $$(pwd)/handshakes:/handshakes pwnagotchi-tools /bin/bash -c "cd /handshakes/pwnagetty/ && npm install && node pwnagetty.js"