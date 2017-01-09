# the build target executable:
  EN_TARGET = lemolgat_corentin_EN.pdf
  FR_TARGET = lemolgat_corentin_FR.pdf

all: clean $(EN_TARGET) $(FR_TARGET)
	perl -p -i -e 's/selectlanguage\{french\}/selectlanguage\{english\}/g' ./cv.tex

$(EN_TARGET): cv.tex
	perl -p -i -e 's/selectlanguage\{french\}/selectlanguage\{english\}/g' ./cv.tex
	pdflatex cv.tex
	mv cv.pdf lemolgat_corentin_EN.pdf

$(FR_TARGET): cv.tex
	perl -p -i -e 's/selectlanguage\{english\}/selectlanguage\{french\}/g' ./cv.tex
	pdflatex cv.tex
	mv cv.pdf lemolgat_corentin_FR.pdf

clean:
	$(RM) *.aux *.log *.out cv.pdf
	perl -p -i -e 's/selectlanguage\{french\}/selectlanguage\{english\}/g' ./cv.tex
