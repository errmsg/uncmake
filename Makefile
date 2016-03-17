install: pasa.sh 
	mv ./uncmake.sh /usr/local/bin/uncmake
	chmod +x /usr/local/bin/uncmake
uninstall: 
	rm /usr/local/bin/uncmake

