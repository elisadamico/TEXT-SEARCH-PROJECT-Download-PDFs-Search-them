##TEXT SEARCH PROJECT – Download PDFs & Search them
# ----------------------------------- #
rm(list=ls())
library(pdfsearch)
library(pdftools)
# ----------------------------------- #

## DOWNLOAD ALL PDFs
# Can enter URLs manually or create a standardized loop depending on website structure. 
url1 <- "sampleurl1.pdf"
url2 <- "sampleurl2.pdf"
# And so on…
# e.g.:
## url1 <- "http://ucdpged.uu.se/peaceagreements/fulltext/South%20Sudan%2020180627.pdf"
## url2 <- "http://ucdpged.uu.se/peaceagreements/fulltext/Kyr-Taj%202021-05-02_Ru.pdf"

destfile1 <- "/Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library/pdfsearch/pdf/sampleurl1name.pdf" 
destfile2 <- "/Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library/pdfsearch/pdf/ sampleurl2name.pdf" 
# And so on…
# e.g.:
## destfile1 <- "/Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library/pdfsearch/pdf/1661.pdf" 
## destfile2 <- "/Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library/pdfsearch/pdf/1656.pdf" 

download.file(	url1	, 	destfile1	)
download.file(	url2	, 	destfile2	)
# And so on…

# ----------------------------------- #
rm(list=ls())
library(pdfsearch)
library(pdftools)
directory <- system.file('pdf', package = 'pdfsearch')


## DOWNLOAD EXCEL SHEETS
# Below looks at keyword searches for several variables that I considered for a dataset, but please replace accordingly

#### Test of readable documents
# After downloading, filter & check that the number of PDFs that you downloaded show up in this test document. If the sum does not match up, check according to document names and use a free online OCR converter to make PDF text readable.

test_ <- keyword_directory(directory, keyword = c(' '), surround_lines = 1, full_names = TRUE)
test <- apply(test_,2,as.character)
write.csv(test,"test_plus20.csv")


# --ECONOMIC-- #
economic_ <- keyword_directory(directory, keyword = c('econom', 'financ', 'developm'), surround_lines = 1, full_names = TRUE)
economic <- apply(economic_,2,as.character)
write.csv(economic,"economic_plus20.csv")

# --TRAINING PROGRAM-- #
training_ <- keyword_directory(directory, keyword = c('train', 'program', 'project'), surround_lines = 1, full_names = TRUE)
training <- apply(training_,2,as.character)
write.csv(training,"training_plus20.csv")

# --FUNDS-- #
funds_ <- keyword_directory(directory, keyword = c('funds', 'lump', 'loan', 'transfer', 'sum'), surround_lines = 1, full_names = TRUE)
funds <- apply(funds_,2,as.character)
write.csv(funds,"funds_plus20.csv")

# --INCLUSIVE-- #
inclusive_ <- keyword_directory(directory, keyword = c('integrat', 'incorp', 'combatant'), surround_lines = 1, full_names = TRUE)
inclusive <- apply(inclusive_,2,as.character)
write.csv(inclusive,"inclusive_plus20.csv")


# This will provide individual cvs/excel sheets to manually read through document reference to certain keywords/concepts for manual coding purposes (rather than reading full documents or individually going into PDFs and keyword 
