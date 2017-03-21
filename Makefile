all: build

build:
	hugo

clean:
	hugo --cleanDestinationDir

serve:
	hugo server  --buildDrafts

publish: clean
	rsync -avr --delete public/ w4a153382@ssh.web4all.fr:/datas/vol3/w4a153382/var/www/adele.im/htdocs/

