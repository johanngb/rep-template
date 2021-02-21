.PHONY: build rerun download analysis clean

build: download analysis

rerun: clean analysis

download:
	cd data && R -e 'rmarkdown::render("download.Rmd")'

analysis:
	cd analysis && R -e 'rmarkdown::render("01_preprocess.Rmd")'
	cd analysis && R -e 'rmarkdown::render("02_main_analysis.Rmd")'

clean:
	echo "Deleting all processed data and output..."
	rm -f data/processed/*
	rm -f data/download.html	
	rm -f analysis/*.html	
	rm -f output/*
	rm -f archive.tar.bz2

archive:
	rm -f archive.tar.bz2
	tar --exclude='.git' -cjf /tmp/archive.tar.bz2 . && mv /tmp/archive.tar.bz2 .
