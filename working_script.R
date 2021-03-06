library("swirl")
library("swirlify")
library("rmarkdown")

setwd("~/Documents/R_scripts/Swirl_Cource/RBasic/")
# new_lesson("Learn_Swirl", "DSC2015")
# new_lesson("R_Basic_Part_0-The_Basics", "DSC2015")
# new_lesson("RBasic_Part_1-Simple_Data_Analysis", "DSC2015")
# new_lesson("RBasic_Part_2-Data_Structure_in_R", "DSC2015")
# new_lesson("R_Basic_Part_3-Function", "DSC2015")
# new_lesson("R_Basic_Part_4-Control_Flow_and_Exception_Handling", "DSC2015")
# set_lesson("RBasic/Learn_Swirl/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_0-The_Basics/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_1-Simple_Data_Analysis/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_2-Data_Structure_in_R/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_3-Control_Flow/lesson.yaml")

rm(list=ls())
uninstall_course("RBasic")
install_course_directory("RBasic")
system("zip -r RBasic.zip RBasic")
delete_progress("dboy")
swirl()

render("~/Documents/R_scripts/Swirl_Cource/RBasic/slides/dboy.Rmd", 
       output_file = "RBasic0.html",
       output_format = "ioslides_presentation")

render("~/Documents/R_scripts/Swirl_Cource/RBasic/slides/ForBasicSharing.Rmd", 
       output_file = "RBasic1.html",
       output_format = "ioslides_presentation")

render("~/Documents/R_scripts/Swirl_Cource/RBasic/slides/dboy.Rmd", 
       output_file = "slides/RBasic0.html",
       output_format = "slidy_presentation")

set_swirl_options(courses_dir = NULL)
swirl2html() # testing
getOption('courses_dir')


library("devtools")
devtools::install_github("swirl", "wush978")
