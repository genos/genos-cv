TEX = pandoc
cv_src = cv_template.tex cv.yml
cl_src = cl_template.tex cv.yml cl.md
FLAGS = --pdf-engine=xelatex

all: cv.pdf cl.pdf

cv.pdf: $(cv_src)
	$(TEX) $(filter-out $<,$^ ) --template=$< $(FLAGS) -o $@

cl.pdf: $(cl_src)
	$(TEX) $(filter-out $<,$^ ) --template=$< $(FLAGS) -o $@

.PHONY: clean
clean:
	$(RM) cv.pdf cl.pdf
