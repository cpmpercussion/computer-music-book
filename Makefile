SOURCE_DOCS := $(wildcard src/*.md)

OUTPUT_NAME=smc
OUTPUT_DOCS=\
	$(OUTPUT_NAME).pdf\
	$(OUTPUT_NAME).docx\
	$(OUTPUT_NAME).html\

REFS_FILE=src/references.bib
CSL_FILE=templates/apa.csl
ARGS_REFS=--bibliography $(REFS_FILE) --csl $(CSL_FILE) --citeproc
ARGS_SECTIONS=--variable=numbersections --variable=indent --number-sections --listings --table-of-contents
ARGS_LATEX=\
	-V 'geometry: left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm' \
	-V 'papersize: a4' \
	-V 'pagestyle:headings' \
	-V 'fontfamily:libertine,sourcecodepro' \
	-V 'fontsize:11pt'
ARG_DATE=$(date '+%Y-%m-%d')
ARGS_METADATA=\
	--metadata title='Sound and Music Computing' \
	--metadata author='Charles Patrick Martin' \
	--metadata date='$(ARG_DATE)'

%.pdf: $(SOURCE_DOCS) #$(REFS_FILE)
	pandoc \
	$(ARGS_METADATA) \
	$(ARGS_REFS) \
	$(ARGS_SECTIONS) \
	$(ARGS_LATEX) \
	-o $@ $^

%.tex: $(SOURCE_DOCS) #$(REFS_FILE)
	pandoc \
	$(ARGS_METADATA) \
	$(ARGS_REFS) \
	$(ARGS_SECTIONS) \
	$(ARGS_LATEX) \
	-o $@ $^

%.docx: $(SOURCE_DOCS) #$(REFS_FILE)
	pandoc \
	$(ARGS_METADATA) \
	$(ARGS_REFS) \
	$(ARGS_SECTIONS) \
	-o $@ $^

%.html: $(SOURCE_DOCS) #$(REFS_FILE)
	pandoc \
	$(ARGS_METADATA) \
	$(ARGS_REFS) \
	$(ARGS_SECTIONS) \
	-o $@ $^

.PHONY: all clean

all : $(OUTPUT_DOCS)

clean:
	rm $(OUTPUT_DOCS)

