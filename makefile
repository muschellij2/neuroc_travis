all:
	# Rscript --vanilla copy_osler.R

copy:
	cp *.yml ~/Dropbox/Packages/neuroc.deps/inst
	echo "cd ~/Dropbox/Packages/neuroc.deps"
	echo "cd ~/Dropbox/Neuroconductor/Development/neuroc_travis"