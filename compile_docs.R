# To compile the pdf documents take the following steps instead of using the RStudio 'Compile PDF' button.

# Establish Version -------------------------------------------------------
version <- "v0.1"

# Main Text ---------------------------------------------------------------
knitr::knit("document.Rnw", output = paste0("tex_files/document_", version, ".tex"))

tinytex::latexmk(file = paste0("tex_files/document_", version, ".tex"), 
                 pdf_file = paste0("pdf_files/document_", version, ".pdf"),
                 engine = "pdflatex")

file.remove(paste0("document_", version, ".log"))

