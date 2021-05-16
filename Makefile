SHELL=/bin/bash
include .env
export
gpustat:
	gpustat -cupF -i 1
jupyter:
    jupyter nbextension enable --py widgetsnbextension
	jupyter notebook --ip $$PUBLIC_IP
mongod:
	mkdir --parents db
	mongod --bind_ip $$PUBLIC_IP --dbpath db --wiredTigerCacheSizeGB 16
