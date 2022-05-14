#=================================# FUNCTION  LOAD CRAN packages  #=================================#    
load_cran <- function(OK_CRAN) {
  
  CRAN <- suppressWarnings(sapply(OK_CRAN, require, 
                                  lib.loc = NULL, 
                                  quietly = FALSE, # no message confirming package attaching is printed / error/warnings
                                  warn.conflicts = TRUE, # warnings are printed about conflicts from attaching the new package
                                  character.only = TRUE)#  logical indicating whether package assumed to be character strings.
  ) 
}

#=================================# DATI #=================================#   
# #  DESIDERATA 
# OK_CRAN <- c("rmarkdown","utils", 
#              "rgdal","sp","rgeos", "sf", "units", "udunits2", 
#              "dplyr", "reshape2", "kableExtra", "skimr", 
#              "RColorBrewer",  "grid", "ggmap","tmap", "tmaptools", 
#              "classInt", "plotly", "viridis", "ggthemes", "rcartocolor", "brew", "bindr") # Create vector with the packages I want #=================================# RUN  FUNCTION  #=================================#   
# F.LoadCRANpack(OK_CRAN) 

#=================================# TEST  FUNCTION  #=================================#   
# packageVersion("brew") # package ‘tidyverse’ not found
# packageVersion("ggthemes") # package ‘tidyverse’ not found
# kable(skim(mtcars))

#=================================# CHECK RESULTS   #=================================#   
# packageVersion('ggplot2') #  ‘2.2.1’
#     # install.packages("devtools")
# devtools::install_github("tidyverse/ggplot2")
# 
# packageVersion('ggplot2') #  ‘ ‘2.2.1.9000’