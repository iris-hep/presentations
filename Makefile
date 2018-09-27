tex: irishep-scf5

clean:
	rm -fR 20180920-iris-hep-cern-scf.{aux,snm,log,nav,toc,out,pdf,vrb}

irishep-scf5:
	pdflatex 20180920-iris-hep-cern-scf.tex
	pdflatex 20180920-iris-hep-cern-scf.tex

irishep-ihep:
	pdflatex 20180927-iris-hep-ihep.tex
	pdflatex 20180927-iris-hep-ihep.tex


