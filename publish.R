#This Utility script processes I-ve_Been_Everywhere.Rmd to I-ve_Been_Everywhere.html

#Set up environment
  setwd("/home/noah/Documents/Code Samples/I-ve_Been_Everywhere/")
  library(rmarkdown)

#Render Markdown Document as HTML
  render(input = "./I-ve_Been_Everywhere.Rmd",
         output_format = "html_document",
         output_file = "./I-ve_Been_Everywhere.html")

#Make a copy named index.html such that it is published by GitHub Pages service
  file.copy(from = "./I-ve_Been_Everywhere.html",
            to   = "./index.html", 
            overwrite = TRUE)
