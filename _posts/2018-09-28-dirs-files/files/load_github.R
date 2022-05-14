
#=================================# PREMESSE #=================================#  
# githubinstall is like install_github BUT does NOT require name of developer


#=================================# FUNCTION ONLY INSTALL GITHUB #=================================#    
####  Extra conditions 

# library("githubinstall")  

#### REAL FUNCTION 
load_github <- function(OK_GITHUB) {
  library("githubinstall")
  lapply(OK_GITHUB, githubinstall, 
         ask = TRUE, # ask to confirm before install.
         ref = "master", # Could be a commit, tag, or branch name, 
         build_vignettes = TRUE, 
         dependencies = F, # whether to also install uninstalled packages which these packages depend on/link to/import/suggest
         # quiet = !"verbose", 
         lib = "/Library/Frameworks/R.framework/Versions/3.5/Resources/library")  
  
}
# #=================================# DATI  #=================================#  
# OK_GITHUB <- c("tidyverse", "drake", "cartogram")  
#   
# #=================================# CALL FUNCTION   #=================================#  
# load_github(OK_GITHUB)
# 


#=================================# UTILITIES / TESTS #=================================#    
  # .libPaths()
  # 
  # packageVersion("tidyverse") # package ‘tidyverse’ not found
  # packageVersion("drake") # package ‘tidyverse’ not found
  # packageVersion("cartogram")  # [1] ‘0.0.3’
  
  