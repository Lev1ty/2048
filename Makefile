SHELL=/bin/bash
gpustat:
    gpustat -cupF -i 1
jupyter:
	source .env && jupyter notebook --ip $$PUBLIC_IP
mongod:
	mkdir --parents db
	source .env && mongod --bind_ip $$PUBLIC_IP --dbpath db --wiredTigerCacheSizeGB 16
