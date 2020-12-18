# the build target executable:
EN_TARGET = lemolgat_corentin_EN.pdf
FR_TARGET = lemolgat_corentin_FR.pdf


all: clean en fr
	perl -p -i -e 's/selectlanguage\{french\}/selectlanguage\{english\}/g' ./resume.tex

en: $(EN_TARGET)
fr: $(FR_TARGET)

$(EN_TARGET): resume.tex
	perl -p -i -e 's/selectlanguage\{french\}/selectlanguage\{english\}/g' ./resume.tex
	pdflatex resume.tex
	mv resume.pdf lemolgat_corentin_EN.pdf

$(FR_TARGET): resume.tex
	perl -p -i -e 's/selectlanguage\{english\}/selectlanguage\{french\}/g' ./resume.tex
	pdflatex resume.tex
	mv resume.pdf lemolgat_corentin_FR.pdf

clean:
	$(RM) *.aux *.log *.out resume.pdf
	perl -p -i -e 's/selectlanguage\{french\}/selectlanguage\{english\}/g' ./resume.tex
